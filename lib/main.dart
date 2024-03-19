import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme().copyWith(
          displayMedium: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
          displayLarge: GoogleFonts.montserrat(
              fontWeight: FontWeight.w800, fontSize: 170),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          color: Colors.blue[800],
          constraints: const BoxConstraints(minHeight: 1200),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const SizedBox(width: 400, height: 80, child: Placeholder()),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Støt unge badmintontalenter!'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 900,
                  child: Text(
                    "Ved at give økonomisk støtte til Farum Badminton, giver du muligheden for dygtige badmintonspillere i Farum Badminton om en livs rejse",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 20, color: Colors.white),
                  ),
                ),
                const Spacer(),
                Countup(
                  duration: 2.seconds,
                  separator: ".",
                  begin: 0,
                  end: 200000,
                  suffix: ".-",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(
                  flex: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
