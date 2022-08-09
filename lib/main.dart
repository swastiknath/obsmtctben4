import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:mtctbe4/mappings.dart';
import 'package:mtctbe4/state_notifier.dart';
import 'package:ticker_text/ticker_text.dart';
import 'package:unicons/unicons.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff141414),
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    final kBodyMargin = EdgeInsets.fromLTRB(25, 0, 10, 0);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.network(
              'https://ik.imagekit.io/fwwm2nv0b6z/OBS_LOGO_PRIM_BLACK_UAhmtCccj.svg?ik-sdk-version=javascript-1.4.3&updatedAt=1660058719294',
              semanticsLabel: 'OBS Logo',
              height: 100,
              width: 100,
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                "Team Building Exercise \n#4 - for MTC.",
                style: GoogleFonts.mina(
                  fontSize: 20,
                  letterSpacing: 2.0,
                ),
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            height: 40,
            width: kWidth,
            child: TickerText(
              startPauseDuration: const Duration(milliseconds: 100),
              endPauseDuration: const Duration(milliseconds: 200),
              returnDuration: const Duration(milliseconds: 100),
              speed: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The 4th Edition of The Observation Media Technologies Chapter Team Building Exercise is co-ordinated by Mr. Ankush Debnath (OBSCL21010). OBS Engineering congratulates him for this initiative.",
                  style: GoogleFonts.play(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: kBodyMargin,
            child: AutoSizeText(
              "Instructions:",
              style: GoogleFonts.prompt(fontSize: 25, color: Colors.pinkAccent),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: kBodyMargin,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                "Welcome to Team Building Exercise Edition 4. Dreamers will be provided with a pair of"
                "images of socio-political significance. This is a test of the \"Observation\" Skills of the Dreamers.",
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          Container(
            margin: kBodyMargin,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                "Hint: You can tap on the images to have a closer look. ",
                minFontSize: 8,
                maxLines: 5,
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),

          // Image Systems

          Container(
              margin: kBodyMargin,
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 25),
              child: Text(
                "IMAGE ONE:",
                style: GoogleFonts.play(
                    fontSize: 15, color: Colors.pinkAccent, letterSpacing: 2.5),
              )),

          Consumer(builder: (ctx1, ref, child) {
            List<ImageStates> states1 = ref.watch(imageStateNotifierProvider);

            return states1.contains(ImageStates.none)
                ? Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Icon(
                  UniconsLine.question_circle,
                  size: 70,
                  color: Colors.white,
                ),

                const SizedBox(height: 10,),
                Container(
                    margin: kBodyMargin,
                    child: AutoSizeText("Tap on the Shuffle Button to shuffle the board.", style: GoogleFonts.play(color: Colors.white, letterSpacing: 2.0),))
              ],
            ): SizedBox(
              width: 410,
              height: 410,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InstaImageViewer(
                  backgroundColor: Colors.black87,
                  disposeLevel: DisposeLevel.low,
                  child: Image(
                    image: Image.network(states1[1].imageURL,).image,
                  ),
                ),
              ),
            );
          }),

          const SizedBox(
            height: 20,
          ),

          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),

          Container(
              margin: kBodyMargin,
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 25),
              child: Text(
                "IMAGE TWO:",
                style: GoogleFonts.play(
                    fontSize: 15, color: Colors.pinkAccent, letterSpacing: 2.5),
              )),

          Consumer(builder: (ctx, ref, child) {
            List<ImageStates> states = ref.watch(imageStateNotifierProvider);

            return states.contains(ImageStates.none)
                ? Column(
              mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(
                        UniconsLine.question_circle,
                        size: 70,
                        color: Colors.white,
                      ),

                    const SizedBox(height: 10,),
                    Container(
                        margin:kBodyMargin,
                        child: AutoSizeText("Tap on the Shuffle Button to shuffle the board.", style: GoogleFonts.play(color: Colors.white, letterSpacing: 2.0),))
                  ],
                )
                : SizedBox(
                    width: 410,
                    height: 410,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InstaImageViewer(
                        backgroundColor: Colors.black87,
                        disposeLevel: DisposeLevel.low,
                        child: Image(
                          image: Image.network(states[0].imageURL).image,
                        ),
                      ),
                    ),
                  );
          }),

          const SizedBox(
            height: 25,
          ),
          Container(
            margin: kBodyMargin,
            child: Text(
              "Participate in this Team Building Exercise by writing down your thoughts at your official communication group on your random "
              "selection of choices as above. Contact with OBSCL21010 should you require any further clarifications.",
              style: GoogleFonts.prompt(fontSize: 12, color: Colors.grey),
            ),
          ),

          const SizedBox(height: 40),

          SvgPicture.network(
            'https://ik.imagekit.io/fwwm2nv0b6z/INTERVIEW_BACKDROP__1__85Bnrtmjli.svg?ik-sdk-version=javascript-1.4.3&updatedAt=1660058719637',
            height: 200,
            width: kWidth,
          )
        ],
      ),
      floatingActionButton: Consumer(builder: (context, ref, child) {
        List<ImageStates> crStates = ref.watch(imageStateNotifierProvider);

        return FloatingActionButton(
          enableFeedback: true,
          onPressed: crStates.contains(ImageStates.none)
              ? () => ref.read(imageStateNotifierProvider.notifier).reshuffle()
              : () {},
          tooltip: crStates.contains(ImageStates.none)
              ? 'Reshuffle'
              : 'Already Reshuffled',
          child: crStates.contains(ImageStates.none)
              ? const Icon(UniconsLine.play)
              : const Icon(Icons.cancel_rounded),
        );
      }),
    );
  }
}
