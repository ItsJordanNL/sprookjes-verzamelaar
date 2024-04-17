import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sprookjesverzamelaar/components/constants.dart';
import 'package:sprookjesverzamelaar/screens/quiz.dart';
import '../components/sprookjes.dart';

class Verhaal extends StatefulWidget {
  Verhaal({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  _VerhaalState createState() => _VerhaalState();
}

class _VerhaalState extends State<Verhaal> {
  late AudioPlayer audioPlayer;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  void initState() {
    super.initState();
    
    audioPlayer = AudioPlayer(); // Initialisatie van de audioPlayer

    setAudio().then((_) {
      // De audioplayer is correct geïnitialiseerd, dus we kunnen verder gaan met andere initialisaties.
      // Voeg hier andere initialisatielogica toe als dat nodig is.
    }).catchError((error) {
      // Er is een fout opgetreden bij het initialiseren van de audioplayer.
      // Hier kun je de fout afhandelen of de gebruiker op de hoogte stellen.
      print('Fout bij het initialiseren van de audioplayer: $error');
    });

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.stop);

    audioPlayer.setSourceAsset('audio/doornroosje.mp3');
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sprookje = Sprookjes.getSprookje()[widget.selectedIndex];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar(sprookje),
      body: Stack(
        children: [
          _backgroundImage(),
          ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _imageSection(sprookje),
                  const SizedBox(height: 10),
                  _listenToText(sprookje),
                  const SizedBox(height: 10),
                  _buildAudioControls(),
                  const SizedBox(height: 20),
                  _verhaalText(sprookje),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizVerhaal(selectedIndex: widget.selectedIndex)),);
                  },
                  child: Text('Quiz'),
                  backgroundColor: primary,
                  foregroundColor: textcolor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _verhaalText(Sprookjes sprookje) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        sprookje.story,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildAudioControls() {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: primary,
            inactiveTrackColor: Colors.blue[100],
            trackShape: RoundedRectSliderTrackShape(),
            trackHeight: 4.0,
            thumbColor: primary,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayColor: Colors.blue.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          ),
          child: Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) async {
              final newPosition = Duration(seconds: value.toInt());
              await audioPlayer.seek(newPosition);
              if (!isPlaying) {
                await audioPlayer.resume();
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatTime(position)),
              Text(formatTime(duration - position)),
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: primary,
          child: IconButton(
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
            ),
            iconSize: 25,
            color: Colors.white,
            onPressed: togglePlayPause,
          ),
        ),
      ],
    );
  }

  void togglePlayPause() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.resume();
    }
  }

  Text _listenToText(Sprookjes sprookje) {
    return Text(
      "Luister naar ${sprookje.title}",
      style:
          const TextStyle(fontSize: 32, fontFamily: "Niconne", color: primary),
          textAlign: TextAlign.center,
    );
  }

  Widget _backgroundImage() {
    return Positioned.fill(
      child: Image.asset(
        'assets/images/paperbackground.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Padding _imageSection(Sprookjes sprookje) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          sprookje.image,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar _appBar(Sprookjes sprookje) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        sprookje.title,
        style: const TextStyle(color: primary),
      ),
      centerTitle: true,
    );
  }
}
