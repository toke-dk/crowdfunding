import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      color: Colors.blue[800],
      constraints: const BoxConstraints(minHeight: 1000),
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
            ),
          ],
        ),
      ),
    );
  }
}
