import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardSection extends StatelessWidget {
  const LeaderboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Leaderboard".toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.w900, fontSize: 55),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(4, (index) => _buildSupportBanner(context)),
        ),
      ],
    );
  }

  Widget _buildSupportBanner(context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12, left: 30),
          child: Container(
            width: 600,

            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), spreadRadius: 2, blurRadius: 6)],
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            padding: const EdgeInsets.only(top: 10, left: 50, bottom: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Teamname".toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Donators Name",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold, letterSpacing: 0.1),
                    ),
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).colorScheme.primary),
                      child: Text(
                        "69 kroner",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "dd/mm/yyy, hh:mm",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: CircleAvatar(
            radius: 32,
          ),
        ),
      ],
    );
  }
}
