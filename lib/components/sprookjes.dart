class Sprookjes {
  String title;
  String story;
  String image;
  String audio;
  String question;
  List<String> answers;
  int correctAnswerIndex;

  Sprookjes({
    required this.title,
    required this.story,
    required this.image,
    required this.audio,
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });

  static List<Sprookjes> getSprookje() {
    List<Sprookjes> sprookje = [];


// ================= 1 ====================== //
    sprookje.add(Sprookjes(
      title: 'Assepoester',
      image: 'assets/images/sprookjes/sprookje1.jpg',
      story:
          '''Er was eens een meisje dat altijd lief en aardig was. Ze woonde samen met haar vervelende stiefmoeder en twee stiefzusters die echte pestkoppen waren. Ze moest hard werken, bij de haard slapen en ze noemden haar Assepoester. Stiekem droomde Assepoester ervan om in het koninklijk paleis te wonen.

Op een dag kondigde de koning een groot bal aan. De prins zou een meisje kiezen om mee te trouwen. Assepoester wilde ook naar het bal, maar ze had niet eens een jurk. Die avond zat ze verdrietig bij het graf van haar moeder. Plotseling voelde ze een windvlaag. Als bij toverslag veranderde haar rok in een gouden jurk en aan haar voetjes verschenen glazen muiltjes! Een grote pompoen veranderde zomaar in een gouden koets… Assepoester hoorde haar moeders stem: ‘Je zult de mooiste van het bal zijn. Maar pas op: als de klok twaalf uur slaat, wordt de betovering verbroken…’ En zo gebeurde het. De prins danste de hele avond alleen met haar. Maar toen de klok twaalf uur sloeg vluchtte ze het paleis uit en verloor haar glazen muiltje op de trappen…

Zou de prins zijn Assepoester ooit nog terugvinden?''',
      audio: '',
      question: 'Hoeveel stiefzussen had Assepoester?',
      answers: ['5', '2', '3', '4' ],
      correctAnswerIndex: 1,
    ));


// ================= 2 ====================== //
    sprookje.add(Sprookjes(
      title: 'De Chinese Nachtegaal',
      image: 'assets/images/sprookjes/sprookje2.jpg',
      story: '''Er was eens, lang geleden, een keizer in China die een porseleinen paleis had. De tuin van het paleis was de grootste en mooiste ter wereld. In de tuin woonde een nachtegaal die betoverend mooi kon zingen. 

Op een ochtend kreeg de Chinese keizer een brief van de keizer van Japan. De Japanse keizer wilde graag eens naar het mooie gezang komen luisteren. De keizer riep de hofmaarschalk en zei: “Laat vanavond de vogel voor mij zingen.” De hofmaarschalk wist helemaal niets van een nachtegaal en vroeg aan alle bewoners van het kasteel of zij wisten waar de nachtegaal woonde. “Ik weet het”, zei een dienstmeisje. En samen gingen ze op zoek naar de vogel. Die avond was de keizer diep geroerd over het mooie lied. “Lieve nachtegaal, zeg me wat je wilt hebben en ik zal het je geven.” De nachtegaal zei: “Ik heb tranen in de ogen van de keizer gezien. Voor een zanger is er geen grotere beloning denkbaar.” 

Diezelfde dag nog werd de nachtegaal benoemd tot Hofkeizerlijke Nachtkastjeszanger en verbleef in het paleis en leefde in een gouden kooi. Hij miste zijn vrijheid wel, maar het geluk van de keizer was hem veel waard. Op een dag ontving de Chinese keizer een geschenk van de Japanse keizer. Hij kreeg een ander prachtig vogeltje. Geen echte maar een mechanische vogel. De Chinese keizer was erg blij mee. Dit vogeltje zong misschien nog wel mooier dan de echte. Steeds vaker speelde de keizer met de nepvogel. Dat deed de echte nachtegaal veel verdriet. Hij vloog weg, terug naar de mooie tuin en zijn vrijheid. Zou het vogeltje ooit nog terugkeren…?''',
      audio: '',
      question: 'Wat kon de nachtegaal?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));


// ================= 3 ====================== //

    sprookje.add(Sprookjes(
      title: 'De Draak',
      image: 'assets/images/sprookjes/sprookje3.jpg',
      story: '''In een ver land woonde eens een koning. Hij had een erg belangrijke kroon. Zolang de koning de kroon had zou alles goed gaan in het land. 

Op een dag gebeurde er iets vreselijks. De kroon was weg! “Het was de heks”, zeiden de bewakers, “zij heeft de kroon gestolen en hem naar de grot met de draak gebracht.” Moedeloos zakte de koning op zijn troon. “De grot met de draak!” Dat was een ramp. Hoe moesten ze die draak verslaan? Na een tijdje, toen het steeds slechter ging met het land, besloten ze het toch te proberen. Maar wat ze ook deden, er was geen soldaat die de draak kon verslaan. 

In het land, vlakbij de grot, woonden ook een boerenzoon en dochter. De jongen was slim en dapper. Het meisje kon prachtig zingen. Wanneer ze zong leek iedereen wel betoverd en luisterde ademloos. Zouden zij het koninkrijk misschien nog kunnen redden…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 4 ====================== //

    sprookje.add(Sprookjes(
      title: 'De indische waterlelie',
      image: 'assets/images/sprookjes/sprookje4.jpg',
      story: '''Ver weg in India, in een oerwoud dat nimmer door mensenvoet is betreden, ligt een klein stil meer. Op het meer drijven zeven waterlelies. 

In het oerwoud woonde een heks, die zó lelijk was, dat ze alleen 's nachts uit haar schuilplaats tevoorschijn durfde te komen. Dan zong ze met haar betoverend mooie stem. Telkens wanneer het volle maan was, daalden op het meer de maanfee en haar sterrenkinderen neer. In het maanlicht dansten zij tot het ochtend werd. Niet langer, want wanneer zij niet voor het ochtendgloren stopten, konden ze niet terug naar de sterrenhemel. 

De heks probeerde al jaren met haar gezang de maanfee en de sterrenkinderen te betoveren. Nog nooit was het gelukt. Tot op een dag er zeven sterrenkinderen ontdeugend waren. “Kom sterrenkinderen, de nacht is om, kom, kom”, sprak de maanfee. Maar de kinderen luisterden niet. Ze dansten en dansten en zo kreeg de heks hen in haar macht. Arme kleine sterrenkinderen! Om middernacht mochten ze nog dansen, maar overdag waren ze veranderd in zeven waterlelies. Verlangend blikten ze naar boven. De blauwe hemel keek neer op de zeven ongelukkige sterrenkinderen. Zou de maanfee nog iets kunnen doen tegen de betovering…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 5 ====================== //
    sprookje.add(Sprookjes(
      title: 'De Kikkerkoning',
      image: 'assets/images/sprookjes/sprookje5.jpg',
      story: '''In een prachtig koninkrijk leefde eens een mooie prinses. Elke dag mocht ze kiezen wat ze ging doen, en elke dag koos ze ervoor in de paleistuin te spelen met haar bal. 

De prinses gooide de bal dan hoog in de lucht en ving hem weer op. Altijd. Tot op die ene dag… Het prinsesje keek even de andere kant op en ‘PLONS’… Haar mooie gouden bal belandde in het water. Gelukkig was daar een kikker die haar wilde helpen. “Kwaak!” Hij viste de bal van de bodem in ruil voor vriendschap. Het prinsesje beloofde dat ze vriendjes zouden worden. Maar ze meende er niets van. 

Toen ze de bal terug had, rende ze snel naar het paleis. Nog dezelfde avond werd er aan de paleisdeur geklopt. “Kwaak! Doe open… Ik ben het, de kikker!” De kikker kwam zijn beloning halen. Hij at mee aan de koninklijke tafel en dronk uit een koninklijk glas. Toen wilde de kikker nog een kus van de prinses. “Bah! Dat is toch vies!” Maar de prinses deed het toch en wat er toen gebeurde…''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 6 ====================== //
    sprookje.add(Sprookjes(
      title: 'De kleine zeemeermin',
      image: 'assets/images/sprookjes/sprookje6.jpg',
      story: '''Er was eens een zeemeerman-koning die woonde op de bodem van de zee. Zijn vrouw was overleden, maar hij had zes prachtige zeemeermin-dochters. 

Het jongste prinsesje was het mooist en ze kon prachtig zingen. Zij droomde ervan op een dag bij de mensen te zijn. Toen ze 15 was mocht ze boven water kijken. Er kwam een zeilschip langs en ze hoorde stemmen. Voorzichtig zwom ze dichterbij en daar zag ze voor het eerst mensen. Eentje was een prins en ze werd meteen verliefd. Opeens stak er een zware storm op en de prins sloeg overboord. De kleine zeemeermin dook de prins achterna en bracht hem veilig aan land. Daarna moest ze snel weer weg. Ze kon haar prins niet vergeten en wenste nog meer dan ooit dat ze mens kon zijn. 

Op een nacht sloop ze stiekem naar de oude zeeheks. Deze zei: “Ik kan je mens maken, maar in ruil daarvoor wil ik je stem.” En zo geschiedde. De kleine zeemeermin kreeg benen en ontmoette opnieuw haar prins. Helaas kon ze hem niet vertellen hoeveel ze van hem hield. Op een dag zou de prins gaan trouwen. Groot was het verdriet van de zeemeermin. “Als ik niet met een prinses hoefde trouwen, trouwde ik met jou”, zei de prins’. De bruiloft werd gevierd op een groot schip. Toen de zeemeermin over de reling keek, zag ze haar zeemeermin zussen. “Wij hebben een dolk bij ons, van de heks, wanneer je daarmee de prins in het hart steekt krijg je je staart terug en kun je met ons mee.” Maar de liefde van de zeemeermin voor haar prins was te groot. Zouden ze ooit nog samen zijn…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 7 ====================== //
    sprookje.add(Sprookjes(
      title: 'De magische klok',
      image: 'assets/images/sprookjes/sprookje7.jpg',
      story: '''Lang geleden woonden op een prachtig kasteel eens zes koningszonen. Het waren ijdele knapen. 

Op een dag bestelden ze bij een machtige tovenaar een klok met zes ridders te paard. Iedereen die de klok zag, zou voortaan aan de prinsen denken. Wanneer de prinsen op hun trompet geblazen hadden, mocht de klok gaan lopen. Toen de klok klaar was, hadden de prinsen hun geld echter al uitgegeven aan mooie kleding, op één zak goud na. “Dan verkoop ik de klok aan iemand anders”, zei de tovenaar. En hij ging op reis op zoek naar een nieuwe koper. “Jij past ondertussen op de klok, Slimme Toon” zei de tovenaar tegen zijn knecht, “maar denk erom! Laat niemand bij de klok.” De knecht was echter een gemeen ventje. Zodra de tovenaar uit zicht was, vertrok hij naar de prinsen en zei: “Ik verkoop jullie de klok voor één zak goud.” 

De prinsen waren blij en gingen snel met de knecht mee naar de toren van de tovenaar. Ze haalden alle onderdelen op, gingen weer terug naar het paleis, waar de knecht aan het werk ging om de klok in elkaar te zetten. Wat was hij mooi! Maar… de knecht was niet alleen gemeen, hij was ook dom. En tovenaars zijn slim. Hij zou vast een straf bedenken wanneer hij de diefstal ontdekte…''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 8 ====================== //
    sprookje.add(Sprookjes(
      title: 'De nieuwe kleren van de Keizer',
      image: 'assets/images/sprookjes/sprookje8.jpg',
      story: '''Er was eens een keizer die zo ijdel was dat hij drukker was met kleding passen dan met regeren. 

De hele dag stond hij voor de spiegel te bedenken wat hij nu weer aan zou doen. Zijn oude kleedster rende af en aan met mantels en maillots. Maar tevreden was hij nimmer. Totdat twee kleermakers een wel héél bijzonder gewaad voor hem maakten... 

Kom je snel kijken?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 9 ====================== //
    sprookje.add(Sprookjes(
      title: 'De rode schoentjes',
      image: 'assets/images/sprookjes/sprookje9.jpg',
      story: '''Er was eens een erg arm meisje. Haar ouders waren overleden en het meisje bedelde blootsvoets op straat. Op een dag kreeg de vrouw van de schoenmaker medelijden met het meisje en gaf haar een paar rode schoentjes. Nu hoefde ze tenminste niet meer op blote voetjes te bedelen. 

Op een koude dag stond het meisje met haar rode schoentjes op het dorpsplein toen er een koets voorbij kwam. De dame die in de koets zat, kreeg zo’n medelijden met het meisje dat ze haar meenam naar huis. Ze kreeg lekker eten, een warm bed en mocht voor altijd bij de dame blijven wonen. Het meisje danste van geluk. Ze ging zoveel van haar nieuwe leven houden dat ze niets liever deed dan dansen met haar mooie spiegelbeeld. Haar schoentjes sleten ervan. “Ga maar nieuwe schoentjes kopen”, sprak de lieve oude dame. “Maar let op! Wel nette schoentjes.” Het meisje luisterde niet. In plaats van nette schoenen voor naar school of naar de kerk kocht ze rode schoentjes om op te dansen. 

Op een dag werd de lieve dame ziek. Net op de dag dat er een groot feest zou zijn in het dorp. Het meisje had zich erg verheugd te kunnen dansen. Ze wachtte tot de zieke dame sliep en sloop toen op haar rode schoentjes het huis uit. Ze danste en danste, tot de klok twaalf uur sloeg. “Oh jee… Ik moet naar huis”, dacht het meisje. “De lieve oude dame is vast nog niet beter.” Maar hoe ze ook probeerde, het lukte niet. De schoentjes kleefden aan haar voeten en dansten en dansten… Het meisje danste het hele land door. Zouden de schoentjes de weg naar huis soms niet meer weten...?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 10 ====================== //
    sprookje.add(Sprookjes(
      title: 'De Trollenkoning',
      image: 'assets/images/sprookjes/sprookje10.jpg',
      story: '''Er was eens een vreselijke koning. Kobald was zijn naam. Hij was lelijk en boosaardig. Kobald was de koning van de trollen, maar de trollen vonden hem niet aardig. 

In het bos woonde ook een goede trol. Hij kon de toekomst voorspellen. Mensen en trollen kwamen bij hem om raad. Op een dag kwam er een mooi meisje naar het huisje van de goede trol. “Dag, ik ben prinses Adelheid. Ik wil trouwen met prins Wikke, maar mijn vader vindt hem niet dapper genoeg. Wat moet ik doen?” “Ga maar naar huis, alles komt goed”, sprak de goede trol. Niet veel later werd de goede trol weer geroepen. 

Voor zijn huis stond een trol met slecht nieuws “Kobald heeft prinses Adelheid gevangen genomen, wat moeten we doen?” “Ga prins Wikke halen en stuur hem naar het moeras van Kobald.” Toen de trol weg was, floot de goede trol een deuntje. Meteen kwam er een uil aan gevlogen en de goede trol fluisterde hem iets in zijn oor. Ondertussen ging prins Wikke op weg naar het moeras. Zou hij wel dapper genoeg zijn om Adelheid te redden…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 11 ====================== //
    sprookje.add(Sprookjes(
      title: 'De Tuinman en de Fakir',
      image: 'assets/images/sprookjes/sprookje11.jpg',
      story:
          '''Er was eens een schatrijke sultan. Op een dag kreeg hij een cadeau van een bevriende emir. Het was een soort ui. 

“Dit is een tulpenbol”, zei de emir. “Stop hem in de grond, dan groeit er een wonderschone bloem. Ik heb er een paar duizend voor u meegebracht.” De sultan was niet onder de indruk van de ‘tulpendingesen’. Zijn oude tuinman stopte er echter toch eentje in de grond. Nadat de emir was vertrokken, werd de sultan ziek. Zelfs de dokter kon hem niet genezen. Op een dag kwam er een zwerver naar de tuinman toe. De tuinman gaf hem wat te drinken en de zwerver speelde op zijn vreemd uitziende fluit. De tuinman luisterde ademloos. 

Opeens kwam er een rode bloem uit de grond. Heel snel. De zwerver zei: “Ik ben een fakir. De sultan is zo ziek omdat hij te rijk is. Alleen als hij de schoonheid van één enkele bloem kan waarderen, wordt hij beter.” De tuinman zette de tulp naast het bed van de sultan. Hij knapte zienderogen op. De dokter gebood hem om alle ‘tulpendingesen’ die hij had te planten om de sultan te genezen. De volgende dag verscheen de sultan op zijn balkon. Beneden speelde de fakir op zijn fluit. Honderden rode bloemen staken hun kopjes uit de aarde. Het was een fantastisch gezicht, en tranen van geluk stroomden over de wangen van de sultan. Zou de sultan ooit weer helemaal beter worden?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 12 ====================== //
    sprookje.add(Sprookjes(
      title: 'De wolf en de zeven geitjes',
      image: 'assets/images/sprookjes/sprookje12.jpg',
      story: '''De kleine geitjes weten heel goed dat ze binnen moeten blijven wanneer moeder geit de stad in gaat. Ze luisteren braaf, maar oh jee… De wolf is veel te slim. 

Of moeten we zeggen: gemeen?! Met een hoge stem en witte poot wordt hij geloofd. Hij stormt het huisje van de geitjes binnen... en eet de geschrokken geitjes op. Op ééntje na. Bibberend zit het arme geitje in de klok. Wanneer moeder thuiskomt en de rommel in haar huisje ziet, snapt ze meteen wat er is gebeurd. Gelukkig vindt ze haar kleine geitje. 

Hij vertelt haar alles over de wolf en zijn gemene streek. Moeder geit moet erg huilen, maar het kleine geitje voelt zich, met zijn mama in de buurt, heel dapper en verzint een plan. Zou hij daarmee zijn broertjes en zusjes nog kunnen redden…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 13 ====================== //

    sprookje.add(Sprookjes(
      title: 'De zes dienaren',
      image: 'assets/images/sprookjes/sprookje13.jpg',
      story: '''Er was eens een oude heks die door haar gemene toverkunsten koningin was geworden. Ze had ook een dochtertje dat lief en mooi was. 

De heks kon dat niet uitstaan en sloot haar daarom op in een toren. Elke prins die met haar wilde trouwen moest drie opdrachten voltooien. Lukte dat niet, dan liep het slecht met hem af. De heks gaf natuurlijk onmogelijke opdrachten en van geen één prins is ooit nog iets vernomen. Maar er was nog een prins. Hij had gehoord hoe geweldig mooi de dochter van de heks was en op een dag besloot hij zijn geluk te beproeven. Onderweg ontmoette hij zes mannen. Elk van hen had een gekke eigenschap. 

De een was zo dik dat hij de hele wereld wel op kon eten. Een tweede kon alles van de hele wereld horen. De derde had benen, zó lang, hij kon in twintig stappen de hele wereld rond, de vierde had een scherp oog dat afgedekt was met een doekje. Wanneer het doekje afging, viel alles wat hij zag in duizend stukjes uiteen. De vijfde was een man die het altijd zo koud had dat geen vuur hem kon warmen. De zesde was een man met een lange nek, zodat hij de halve wereld kon zien. Al deze mannen werden de dienaren van de prins en samen gingen ze op weg naar de boze heks. Ook deze prins moest drie opdrachten voltooien. Wat denk je? Zou hij het redden met behulp van zijn bijzondere vrienden…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 14 ====================== //

    sprookje.add(Sprookjes(
      title: 'de zes zwanen',
      image: 'assets/images/sprookjes/sprookje14.jpg',
      story: '''Er was eens een koning die zes zonen had en een lieve, slimme dochter die Elisa heette. Ze hielden zielsveel van elkaar. Toen de koning een nieuwe vrouw trouwde verborg hij zijn kinderen in een geheim slot. Zou de nieuwe koningin zijn kinderen wel goed behandelen? Maar de jaloerse koningin kwam achter het geheim van de kinderen in het slot en veranderde de zes prinsen in zwanen. 

Om de betovering te verbreken moest hun kleine zusje Elisa zes hemden van bos-astertjes breien. Ook mocht ze zes jaar niet spreken of lachen. Dapper begon Elisa te breien, maandenlang, helemaal alleen in het slot. Haar handen kregen blaren van het werken, maar ze hield vol. Af en toe bezochten de zes zwanen hun zusje in de slotvijver. Dat sterkte haar om vastberaden door te werken aan de hemden. 

Zou het Elisa lukken om de betovering te verbreken?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 15 ====================== //
    sprookje.add(Sprookjes(
      title: 'Doornroosje',
      image: 'assets/images/sprookjes/sprookje15.jpg',
      story: '''Er waren eens een koning en een koningin. Zij hadden een grote wens. Ze wilden heel graag een kindje. 

Op een mooie dag, toen alle rozen van het paleis bloeiden, ging de wens in vervulling. Er werd een prachtig prinsesje geboren. In het hele land was het feest en iedereen mocht naar het paleis komen. Ook alle goede feeën. Helaas was de koningin één fee vergeten uit te nodigen. Toen het feest in volle gang was, net op het moment dat de feeën hun wensen uitspraken voor het prinsesje, sloegen met een klap de paleisdeuren open. Daar was de vergeten fee. “Ik heb ook nog een wens voor het prinsesje. Op de dag dat ze achttien jaar wordt, zal ze zich prikken aan een spinnewiel en sterven.” “Nee! Dat mag niet gebeuren”, sprak een kleine fee. “Ik heb mijn wens nog niet uitgesproken. De prinses zal niet sterven, maar honderd jaar slapen.” En zo gebeurde het. 

Op de dag van haar achttiende verjaardag zwierf de prinses rond in het paleis. In een ver kamertje, hoog in de toren vond zij een spinnewiel. Ze prikte zich... en viel in een diepe slaap. Als door een wonder viel iedereen in het paleis samen met haar in slaap en groeide er een dikke rozenhaag rond het kasteel. Alle mensen in het land vergaten het kasteel en de koninklijke familie. Tot op een dag - het was precies honderd jaar later - er een mooie prins voorbij de enorme rozenstruik kwam…''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 16 ====================== //
    sprookje.add(Sprookjes(
      title: 'Ezeltje strekje',
      image: 'assets/images/sprookjes/sprookje16.jpg',
      story: '''Tafeltje dek je, ezeltje strek je en knuppel uit de zak. Er was eens een kleermaker, die drie zoons had. Op een dag trokken de jongens de wijde wereld in om een vak te leren. De oudste wilde meubelmaker worden, de middelste molenaar en de jongste timmerman. Toen de oudste zoon drie jaar bij een leermeester had gediend, zat zijn scholing erop. Als dank kreeg de jongen een houten tafeltje. Wanneer je zei: 'Tafeltje dek je', verscheen er heerlijk eten op tafel. Op weg naar huis overnachtte de jongen in een herberg. “Ik heb helaas geen eten meer voor u”, zei de waard. “Dat geeft niet”, zei de jongen. “Tafeltje dek je!” En hup…het eten was geregeld. Toen het nacht was, wisselde de jaloerse waard het tafeltje stiekem om. Thuis wilde de hij het tafeltje laten zien. "Tafeltje dek je!” Maar er gebeurde helemaal niets. Ook voor de tweede zoon zat zijn leertijd erop. 

Als dank ontving hij van zijn leermeester een ezel. “Wanneer je zegt: 'Ezeltje strek je', zal de ezel zijn staart optillen en je gouden munten schenken”, sprak de meester. Ook deze zoon logeerde in de herberg. De waard had ontdekt hoe de jongen aan goudstukken kwam. 's Nachts wisselde hij de ezel stiekem om. De vader wist niet wat hij met zijn zoons moest. De een beweerde een betoverde tafel te hebben, de andere een betoverde ezel. Maar er gebeurde helemaal niets. Teleurgesteld schreef hij zijn jongste zoon een brief. Deze vertelde zijn leermeester wat zijn vader had geschreven. “Ik denk dat de waard jouw broers bestolen heeft. Hier, dit is mijn cadeau. Het is een zak met een knuppel erin. Zeg: 'Knuppel uit de zak' en de knuppel zal belagers een stevig pak rammel geven. Ga nu naar huis.” De jongen ging op weg. Onderweg stopte hij bij dezelfde herberg. Zou hij met zijn cadeau de waard een lesje kunnen leren…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 17 ====================== //
    sprookje.add(Sprookjes(
      title: 'Hans en Grietje',
      image: 'assets/images/sprookjes/sprookje17.jpg',
      story: '''Aan de rand van een groot bos woonde eens een houthakker met zijn vrouw en twee kinderen Hans en Grietje. 

Op een dag was al het geld op. “Er is maar één oplossing”, zei de vrouw van de houthakker. '”We brengen Hans en Grietje heel ver het bos in en dan laten we ze achter.” De man stribbelde tegen maar de vrouw kreeg haar zin. Ze was niet de echte moeder, maar de stiefmoeder van Hans en Grietje. Hans had alles gehoord. De volgende dag gingen ze op pad met alleen een stuk brood voor onderweg. “Geef gauw je brood, Grietje”, fluisterde Hans. “Ik heb een plan.” Na een tijdje kwamen ze bij een open plek. “Rusten jullie hier maar even uit”, zei de vrouw, “We zijn zo terug.” Dat was natuurlijk helemaal niet waar, en na een lange tijd vielen Hans en Grietje in slaap. Toen ze wakker werden, was het nacht. “Kom Grietje, we gaan naar huis”, zei Hans. Maar de vogels hadden alle kruimels opgegeten! Ze raakten alleen maar meer verdwaald. 

Toen zagen ze tussen de bomen een huisje. Het dak was van krakelingen en speculaas, bezaaid met pindarotsjes, zuurtjes en toverballen. Wat lekker! Hans brak net een stuk speculaas van het huisje, toen er een stemmetje klonk: “Knibbel knabbel knuisje, wie knabbelt daar aan mijn huisje? Kom maar binnen, ik heb nog meer lekkers, hoor.” Ze gingen naar binnen, maar toen viel de deur met een klap achter hen in het slot. Ze waren in het huis van een gemene heks. “Hebbes, ik ga jou opeten”, zei ze tegen Hans. In de weken die volgden, zat Hans in een kooi en werd vetgemest door de heks. Op een dag vond ze dat het tijd was. “Steek de oven eens aan, meisje.” Grietje deed wat haar gevraagd werd, maar kreeg toen een ander plan… Zouden Hans en Grietje ooit nog thuiskomen?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 18 ====================== //
    sprookje.add(Sprookjes(
      title: 'Het bruidskleed van genoveva',
      image: 'assets/images/sprookjes/sprookje18.jpg',
      story: '''Prins Arthur zou gaan trouwen met de mooie prinses Genoveva. 

Vaak ging het paar uit wandelen en dan zei de prins: “Kijk, het geel van de boterbloemen en het blauw van de korenbloemen en ooh… Dat rood van de klaprozen… Al die mooie kleuren zouden in je bruidskleed moeten zitten, lieve Genoveva.” In het land van Prins Arthur woonde ook een oude weefster. Alleen zij zou het bruidskleed van de prinses kunnen maken. Helaas was de oude vrouw blind geworden. “Ik kan je niet helpen prins, mijn handen kunnen het wel”, zei ze, “Maar… Ik kan de kleuren niet meer zien.” De prins ging bedroefd naar het paleis terug en de oude vrouw ging haar duifjes voeren. Ze huilde van verdriet. 

Een wijze uil hoorde van het verhaal en zei tegen de vogels: “Jullie kennen de kleuren toch? Kunnen jullie niet iets terug doen voor de oude vrouw?” De volgende dag zat de oude weefster te treuren bij haar weefgetouw. “Wist ik nu maar wat groen was”, zuchtte ze en meteen voelde ze dat een snaveltje haar een streng zijde tussen de vingers duwde. “En nu het blauw van de lucht.” Samen met alle vogels werkte de vrouw aan het kleed en ze straalde van geluk. Toen de jurk klaar was, liet ze de prins komen. Ook hij was dolgelukkig. “Mijn bruid wordt de mooiste van het land.” En de vogeltjes? Die waren zo in de weer geweest met al de kleuren dat hun veertjes waren meegekleurd.''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 19 ====================== //
    sprookje.add(Sprookjes(
      title: 'Het meisje met de zwavelstokjes',
      image: 'assets/images/sprookjes/sprookje19.jpg',
      story: '''Het was oudejaarsavond en gruwelijk koud, het sneeuwde en het begon donker te worden. Op straat liep een klein arm meisje, blootshoofds en barrevoets. 

In een oude schort hield zij een heleboel zwavelstokken. Uit alle vensters straalden kaarslicht vanwege oudjaar. Op straat rook het heerlijk naar gebraden gans. In een hoekje tussen twee huizen ging het meisje ineengedoken zitten. Ze had het koud, maar naar huis durfde zij niet. Zij had nog geen zwavelstokjes verkocht, haar vader zou haar slaan. Ze besloot één zwavelstokje op te steken om haar vingers te warmen. Plotseling zag alles er warm en gezellig uit. 

Toen ging het zwavelstokje weer uit. Het meisje besefte dat ze gewoon op straat zat. Vol hoop streek ze nog een stokje af. Heel even had ze het weer warm. Ook dit keer zag ze de mooiste taferelen. Zo bleef ze stokjes afstrijken. Bij het laatste stokje verscheen als een wonder de grootmoeder van het meisje. Ze was gestorven, maar was altijd als enige goed voor het meisje geweest. De grootmoeder tilde het meisje op, nam haar in haar armen, en samen vlogen ze hoger en hoger… Waar vlogen die twee naartoe?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 20 ====================== //
    sprookje.add(Sprookjes(
      title: 'Het stoute prinsesje',
      image: 'assets/images/sprookjes/sprookje20.jpg',
      story: '''Er waren eens, lang geleden, een koning en een koningin. Ze waren zielsgelukkig met hun lieve kleine dochter, het prinsesje. 

Elke dag zei de koningin: “Dag mijn prinsesje, mijn dochtertje-klein. Voor eeuwig zul je mijn lieveling zijn.” En dan zei het prinsesje: “Dag koningin, mijn moedertje-fijn. Voor eeuwig zal ik jouw lieveling zijn.” Op een dag kwam de koning thuis van een lange reis. Hij had een papegaai meegebracht. “Deze vogel kan praten”, sprak de koning, maar wat ze ook probeerden, de vogel zei niets. Het prinsesje, die het wel een leuk spelletje vond, begon wel iedereen na te praten. Iedereen werd er zo wanhopig van dat ze de dokter riepen. “Dokter, ze praat alles maar na.” De dokter kon niet helpen en adviseerde het prinsesje een lange boswandeling te laten maken. 

Onderweg kwam het prinsesje een oude vrouw tegen. “Dag meisje.” “Dag meisje.” Het prinsesje kon het niet laten de oude vrouw na te doen. Ze deed zelfs na hoe het kromme vrouwtje liep. “Wat ben jij een stout meisje. Je lijkt wel een papegaai!” De vrouw zwaaide met haar stok en sprak een vreemde toverspreuk uit. Flits! Het volgende moment was de prinses veranderd in een papegaai. Het oude vrouwtje was een heks. Het meisje vloog als papagaai naar het paleis terug waar iedereen al naar haar op zoek was. Natuurlijk herkende niemand het meisje nu ze veren en een snavel had. Gelukkig kon ze wel napraten, misschien kwam het dan toch nog goed…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 21 ====================== //
    sprookje.add(Sprookjes(
      title: 'Het kabouterdorp',
      image: 'assets/images/sprookjes/sprookje21.jpg',
      story:
          '''In de dagen dat alle mensen nog van mooie muziek hielden, regeerden er eens een koning en koningin over een klein, welvarend landje. Zij hadden drie mooie dochters. 

De hele familie was muzikaal, behalve de jongste dochter Estrella. Daarom gaven de koning en koningin de minister van Vrolijke Zaken de opdracht een muziekonderwijzer te zoeken voor hun dochter. Ze moest op zijn minst het do-re-mi-fa-sol leren en een paar danspasjes. De minister was er zeker van dat hij niemand kon vinden. Daarom besloot hij de klokkenluider in zijn plaats te sturen. Deze gaf de opdracht weer door aan de poortwachter. Er was geen eer aan te behalen. De poortwachter gaf de opdracht weer door aan een mandenmaker. Deze wilde wel een gokje wagen. 

Hij liep van deur tot deur, van dorp tot dorp. Op een goede dag bezocht de mandenmaker een kabouterdorpje waar hij de mooiste klanken hoorde. De kabouters gaven hem een gouden stemvork. Daarmee kon hij de jongste prinses betoveren. En zo geschiedde. Tijdens een feest aan het hof werd de jongste prinses betoverd. Zij kon daarna zó mooi en sierlijk dansen en zo zuiver zingen dat de tranen je over de wangen liepen. De mandenmaker werd beloond en benoemd tot minister van Vrolijke Zaken, en… Hij trouwde met Estrella.''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 22 ====================== //
    sprookje.add(Sprookjes(
      title: 'Klein duimpje',
      image: 'assets/images/sprookjes/sprookje22.jpg',
      story: '''Er was eens een houthakker die een vrouw en zeven zoons had. De jongste van de zeven kinderen was heel klein. Hij was niet groter dan een duim. Daarom werd hij Klein Duimpje genoemd. 

Het gezin was erg arm. De ouders werden zo wanhopig dat ze besloten de kinderen achter te laten in het bos. Maar Klein Duimpje was slim. Hij strooide kiezeltjes zodat ze de weg terug konden vinden. Een paar weken laten probeerden de ouders het opnieuw. Ditmaal zorgden ze ervoor dat Klein Duimpje geen kiezeltjes kon strooien. Omdat hij niets anders had, strooide Klein Duimpje met broodkruimels. Maar toen hij zijn broertjes de weg terug wilde wijzen, waren alle kruimeltjes door de vogeltjes opgegeten. Snel klom hij in een boom. “Ik zie in de verte een huis, daar wonen vast mensen.” Helaas woonde er geen mensen maar een reus. Toch mochten ze van de vrouw van de reus een nachtje blijven slapen omdat ze zo moe waren. “Maar, pas op! Jullie moeten heel stil doen. De reus mag niet wakker worden.” 

De volgende ochtend gingen de zeven broertjes er weer snel vandoor. Maar… De reus was ze op het spoor. Ze renden en renden, maar de reus was veel sneller. Hij had Zeven Mijls Laarzen waarmee hij enorme stappen kon nemen. “Snel, ik weet een grot waar we ons kunnen verstoppen”, zei Klein Duimpje. “Daar kan de reus ons vast niet vinden.” Moe van het zoeken viel de reus, vlakbij de verstopplaats, in een hele diepe slaap. Weer kreeg Klein Duimpje een plan. “Wat zou er gebeuren wanneer ik die Zeven Mijls Laarzen te pakken zou kunnen krijgen…?”''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 23 ====================== //

    sprookje.add(Sprookjes(
      title: 'Kleine boodschap',
      image: 'assets/images/sprookjes/sprookje23.jpg',
      story: '''Er was eens een prachtig land, vol dichte bossen met ontelbare bospaden. Je kon er gemakkelijk verdwalen. Daarom had de koning een boodschapper aangesteld die iedereen de weg wees: Kleine Boodschap. Op een dag deed Kleine Boodschap een dutje in het gras toen een merel de rode pluim van zijn muts pikte. En vanaf dat moment wist hij de weg niet meer. Wat naar, want nu verdwaalde iedereen! Juist die dag bracht de koning zijn trouwe boodschapper een pluim, voor bewezen diensten. Kleine Boodschap prikte hem op zijn muts en wat bleek? Plotseling wist hij de weg weer… en zo kwam alles toch nog goed!''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 24 ====================== //

    sprookje.add(Sprookjes(
      title: 'Pinokkio',
      image: 'assets/images/sprookjes/sprookje24.jpg',
      story: '''De timmerman Geppetto wilde zo graag een zoon dat hij een houten pop maakte die hij Pinokkio noemde. Toen een blauwe fee Pinokkio tot leven wekte was Geppetto zielsgelukkig. Maar de goedgelovige houten pop moest nog veel leren voordat hij een echte jongen kon worden. Daarom stuurde zijn vader hem naar school. 

 
Onderweg haalden de sluwe vos en de domme kat Pinokkio over om mee te gaan op allerlei avonturen. Telkens als hij hierover loog tegen Geppetto, groeide zijn neus een paar centimeter. Op een kwade dag kwam Pinokkio niet thuis uit school en begon Geppetto wanhopig een zoektocht over land en zee... Waar is toch Pinokkio?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 25 ====================== //
    sprookje.add(Sprookjes(
      title: 'Raponsje',
      image: 'assets/images/sprookjes/sprookje25.jpg',
      story: '''Er waren eens een man en een vrouw die naast een oude heks woonden. De vrouw was in verwachting en kreeg enorme zin in raponsjes. 

Ze vroeg haar man er een paar te plukken in de tuin van de oude heks. De man durfde dat niet zo goed, maar deed het toch. “Dus jij steelt mijn heerlijke groente?”, hoorde hij opeens de heks krijsen. Van schrik liet de man de plantjes vallen en beloofde dat de heks hun kindje zou krijgen, als zij hem maar liet gaan. Nog die nacht werd het kindje geboren en de heks ging ermee vandoor. Het was een meisje en de heks noemde haar Raponsje. Ze groeide eenzaam op. Niemand mocht haar zien. 

Toen Raponsje was uitgegroeid tot een prachtige jongedame sloot de heks haar op in een toren. Wie weet zou er anders wel iemand met haar willen trouwen! Het mooiste aan Raponsje was haar lange, lange goudblonde vlecht. Wanneer de heks Raponsje in de toren eten ging brengen, zei ze: “Raponsje, hang je vlecht eens naar beneden.” Dan klom de heks langs de vlecht omhoog en bracht haar eten. Op een dag hoorde Raponsje weer: “Raponsje, hang je vlecht eens naar beneden.” Het was een prins, die stiekem de heks was gevolgd en alles had gezien. Hij werd meteen verliefd op Raponsje, maar wat zou de heks doen als zij daar achterkwam…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 26 ====================== //
    sprookje.add(Sprookjes(
      title: 'Repelsteeltje',
      image: 'assets/images/sprookjes/sprookje26.jpg',
      story: '''Er was eens een arme molenaar. Zijn vrouw was gestorven, maar hij had nog een lieve dochter. De molenaar wilde graag dat zijn dochter niet meer in armoede zou leven.

Op een dag kwam de koning naar het dorp van de molenaar op zoek naar een vrouw. De arme man greep zijn kans. “Majesteit! Is mijn dochter niet prachtig?” En hij verzon erbij dat zijn dochter goud kon spinnen van stro. Daar zou de koning vast blij van worden. De volgende dag werd het meisje ontboden op het paleis. Direct werd ze naar een kamertje gebracht waar een spinnewiel stond en een baal stro. “Je hebt tot morgenochtend de tijd om van dat stro goud te spinnen. Lukt je dat niet, dan zul je voor altijd opgesloten blijven.” Het meisje huilde van radeloosheid. Opeens hoorde ze een raar geluidje. Krrr… In de hoek van de kamer ging een geheim deurtje open. Er kwam een raar mannetje tevoorschijn. “Ik kan je wel helpen”, zei het mannetje, en hij begon te spinnen. Zo ging het drie dagen lang. 

Telkens spon het mannetje goud uit stro voor het meisje in ruil voor een sieraad. De derde dag waren de sieraden op. Het mannetje wilde nu in ruil voor zijn hulp een kindje. Maar het meisje had helemaal geen kindje. “Nee, zei het mannetje, het kindje dat je krijgt als je koningin bent.” Het meisje dacht helemaal nog niet aan kinderen en ze stemde toe. Dankzij de hulp van het mannetje werd het meisje koningin en… Kreeg een kindje. Op een slechte dag kwam het mannetje zijn beloning halen. Wat huilde de koningin. Ze kreeg nog één kans. “Als je binnen drie dagen mijn naam raadt,” zei het mannetje, “dan mag je het kindje houden.” Maar zou de koningin de naam wel weten…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 27 ====================== //
    sprookje.add(Sprookjes(
      title: 'Roodkapje',
      image: 'assets/images/sprookjes/sprookje27.jpg',
      story: '''Er leefde eens een meisje met haar moeder aan de rand van het bos. Het meisje droeg elke dag een rood doekje om haar hoofd. Daarom noemde men haar Roodkapje. 

Aan de andere kant van het bos woonde de grootmoeder van Roodkapje. “Wil jij vandaag naar grootmoeder gaan, Roodkapje?” vroeg moeder. “Grootmoeder is ziek, ze kan deze mand met eten wel gebruiken. Maar blijf goed op het pad, er is een wolf in het bos.” Roodkapje was helemaal niet bang voor wolven en vrolijk ging ze op pad. Na een tijdje sprong er opeens een groot harig beest voor haar voeten. Oei, het was de wolf! De gemenerik vroeg wat Roodkapje ging doen. Toch wel geschrokken gaf Roodkapje antwoord. 

Snel bedacht de wolf een list. “Zou je niet wat bloemen plukken voor je oma, dat vindt ze vast heel leuk.” Roodkapje deed wat de wolf had gezegd. Ondertussen spoedde de wolf zich naar het huisje van grootmoeder. “Wie is daar.” “Ik ben het Roodkapje”, zei de sluwe wolf. “Kom dan maar binnen”, zei grootmoeder. Dat had ze beter niet kunnen doen. Met een grote hap at de wolf haar op. Daarna ging hij in bed liggen en wachtte op Roodkapje…''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 28 ====================== //
    sprookje.add(Sprookjes(
      title: 'Sneeuwwitje',
      image: 'assets/images/sprookjes/sprookje28.jpg',
      story: '''Er was eens een koningin die een kindje kreeg, met een huid zo wit als sneeuw. Ze noemde haar Sneeuwwitje. Toen de koningin stierf, trouwde de koning een ijdele vrouw. Een jaloerse koningin die elke dag in haar toverspiegel keek.

Ze vroeg: ‘Spiegeltje, spiegeltje aan de wand, Wie is de mooiste van het hele land?’ En de spiegel antwoordde altijd: ‘Majesteit, zo mooi als u is er geen, U bent het mooist van iedereen.’ Sneeuwwitje groeide op tot een wonderschone prinses.

Toen de koningin weer eens voor de toverspiegel stond klonk het: ‘O koningin, heel mooi bent u, maar Sneeuwwitje is duizendmaal mooier, nu.’ De koningin was woest! Ze werd zo jaloers dat ze de jager vroeg om Sneeuwwitje in het bos te doden. Maar die kreeg medelijden met het prinsesje en zei: ‘Ren vlug weg, meisje. Veel geluk.’

Wanhopig dwaalde Sneeuwwitje rond totdat ze een klein huisje ontdekte. Toen er niemand opendeed stapte ze naar binnen. Daar telde ze zeven kleine stoeltjes om een tafel. En zeven kleine bedjes naast elkaar. Doodmoe ging Sneeuwwitje dwars over de bedjes liggen en viel meteen in slaap. ‘Pompom… Pompidom!’

Zeven vriendelijke dwergen kwamen thuis na een lange dag werken in de bergen. Toen ze Sneeuwwitje zagen waren ze heel verbaasd, maar gelukkig mocht ze bij hen blijven wonen. Sneeuwwitje hield het huisje schoon en zorgde voor het eten. Ze was gelukkig.

Toen de boze koningin ontdekte dat Sneeuwwitje nog leefde vermomde ze zich als appel-koopvrouw. Ze ging naar het huisje en liet Sneeuwwitje proeven van een rode, giftige appel. Het meisje viel meteen levenloos op de grond… De dwergen waren ontroostbaar en legden Sneeuwwitje in een glazen kistje op het mos.

Totdat een jonge prins voorbij reed….''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 29 ====================== //
    sprookje.add(Sprookjes(
      title: 'Sprookjesboom',
      image: 'assets/images/sprookjes/sprookje29.jpg',
      story: '''In het Sprookjesbos leeft iedereen altijd lang en gelukkig, maar er gebeuren ook wel eens spannende dingen. Sprookjesboom krijgt altijd alles mee en staat te popelen om de mooiste verhalen uit het Sprookjesbos met jou te delen! Strijk snel neer op één van de bankjes en doe samen met Specht, Konijn en Eekhoorn mee met de interactieve sprookjes!''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

// ================= 30 ====================== //
    sprookje.add(Sprookjes(
      title: 'Vrouw Holle',
      image: 'assets/images/sprookjes/sprookje30.jpg',
      story: '''Er was eens een vrouw die twee dochters had: Mina en Rita. Mina was lui en onverschillig. Rita was lief en ijverig. 

Op een middag zat Rita stilletjes bij de put te huilen. Ze werkte aan een spinnewiel. Door haar tranen zag ze niet goed wat ze deed en… O jee! Een van de spoelen van het spinnewiel glipte uit haar handen en viel zo de put in. Rita keek in de put, verloor haar evenwicht en viel. Ze kwam terecht in een prachtig weiland. Op goed geluk liep ze een weggetje af en ze kwam langs een grote oven met wel honderd broden erin. Toen Rita langsliep, hoorde ze honderden stemmetjes. “Pak ons toch, pak ons toch, straks verbranden wij hier nog!” Het waren de broden, die in de oven lagen te bakken. Ze haalde de broden uit de oven en ging toen weer verder. Wat verder stond een boom. “Meisje, pluk mijn appels maar, want mijn takken zijn zo zwaar!” “Natuurlijk”, zei Rita en ze hielp de boom. 

Toen kwam ze bij een huisje. “Dag, ik ben Vrouw Holle, wil jij niet een poosje bij mij blijven. Ik kan wel een goede hulp gebruiken.” Rita besloot de vrouw ook te helpen. “Elke dag moet je mijn bed goed uitkloppen. Zo hard, dat de veren in het rond vliegen. Als dat gebeurt, dan sneeuwt het ergens op aarde.” Na een poosje kreeg Rita heimwee en ging weer naar huis. Als beloning voor haar goede zorgen en hulp werd ze overladen met goud. Haar moeder was erg blij dat Rita weer thuis was, maar haar luie zus was jaloers. De volgende dag besloot Mina dat ze ook wel eens in die put kon springen. Wat een makkelijke manier om aan goud te komen! Maar zou een lui meisje als zij wel dezelfde beloning krijgen van Vrouw Holle…?''',
      audio: '',
      question: 'Hoe lang sliep doornroosje?',
      answers: ['antwoord 1', 'antwoord 2', 'antwoord 3', 'antwoord 4'],
      correctAnswerIndex: 1,
    ));

    return sprookje;
  }
}
