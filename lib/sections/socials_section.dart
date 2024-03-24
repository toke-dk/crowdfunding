import 'package:flutter/material.dart';

class SocialsSection extends StatelessWidget {
  const SocialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "følg med!".toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(fontWeight: FontWeight.w900, fontSize: 55,),
    );
  }
}
