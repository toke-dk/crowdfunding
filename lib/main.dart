import 'package:crowdfunding/header.dart';
import 'package:crowdfunding/leaderboard_section.dart';
import 'package:crowdfunding/support_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
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
          displayMedium: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700, color: Colors.blueGrey[900]),
          displayLarge: GoogleFonts.montserrat(
              fontWeight: FontWeight.w800, fontSize: 170),
        ),
        scaffoldBackgroundColor: Colors.blueGrey.withOpacity(0.07),
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
      body: FooterView(
          footer: Footer(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: SizedBox(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "FAQ | Kontakt | Pivatlivspolitk ".toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
          children: [
            Column(
              children: [
                Header(),
                SizedBox(
                  height: 50,
                ),
                SupportSection(),
                SizedBox(
                  height: 50,
                ),
                LeaderboardSection(),
              ],
            ),
          ]),
    );
  }
}
