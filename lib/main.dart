import 'package:crowdfunding/header.dart';
import 'package:crowdfunding/support_section.dart';
import 'package:flutter/material.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SupportSection(),
          ],
        ),
      ),
    );
  }
}
