import 'dart:math';

import 'package:flutter/material.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8),
          ]),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            "Støt Turen! 200",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 1,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(
                4,
                (index) => OutlinedButton(
                      onPressed: () {},
                      child: Center(child: Text("${index == 0 ? 10 : index == 1 ? 50 : index == 2 ? 100 : 1000} kr")),
                    )),
          )
        ],
      ),
    );
  }
}
