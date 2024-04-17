import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioEffects extends StatefulWidget {
  const AudioEffects({super.key});

  @override
  State<AudioEffects> createState() => _AudioEffectsState();
}

class _AudioEffectsState extends State<AudioEffects> {
  late AudioPlayer player = AudioPlayer();


@override
  void initState() {
  super.initState();

  player = AudioPlayer();

  player.setReleaseMode(ReleaseMode.stop);

  WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource('audio/backgroundmusic.mp3'));
      await player.setReleaseMode(ReleaseMode.loop);
      await player.setVolume(0.2);
      await player.resume();
    });

}

  void stopAudio() async {
    await player.stop();
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
