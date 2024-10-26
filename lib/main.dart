import 'package:crowdfunding/sections/goal_section.dart';
import 'package:crowdfunding/sections/header.dart';
import 'package:crowdfunding/sections/leaderboard_section.dart';
import 'package:crowdfunding/sections/socials_section.dart';
import 'package:crowdfunding/sections/support_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
      title: 'Sportsindsamling',
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
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        width: 500,
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
              "Indsamlingskampagne for farum badminton".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            )),
            ListTile(
              title: Text("Hjem".toUpperCase()),
            ),
            ListTile(
              title: Text("Støt".toUpperCase()),
            ),
            ListTile(
              title: Text("Leaderboard".toUpperCase()),
            ),
            ListTile(
              title: Text("Projektet".toUpperCase()),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          FooterView(
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
              children: const [
                Column(
                  children: [
                    Header(),
                    SizedBox(
                      height: 50,
                    ),
                    SupportSection(),
                    SizedBox(
                      height: 100,
                    ),
                    LeaderboardSection(),
                    SizedBox(
                      height: 60,
                    ),
                    GoalSection(),
                    SocialsSection(),

                  ],
                ),
              ]),
          Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              radius: 30,
              child: IconButton(
                  onPressed: () => _key.currentState!.openDrawer(),
                  icon: const Icon(
                    Icons.menu,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
