import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportSection extends StatefulWidget {
  const SupportSection({super.key});

  @override
  State<SupportSection> createState() => _SupportSectionState();
}

class _SupportSectionState extends State<SupportSection> {
  bool isPressed = false;

  bool wantsToReceiveUpdates = false;
  bool keepDonationAnonymous = false;

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
            isPressed ? "Støt Turen!" : "Detaljer",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          isPressed ? _supportSection() : _detailsSection(),
          const Divider(
            height: 50,
          ),
          AspectRatio(
              aspectRatio: 6,
              child: FilledButton(
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Næste"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ))),
        ],
      ),
    );
  }

  Widget _supportSection() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
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
                    child: Center(
                        child: Text(
                            "${index == 0 ? 10 : index == 1 ? 50 : index == 2 ? 100 : 1000} kr")),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        AspectRatio(
            aspectRatio: 6,
            child: OutlinedButton(
                onPressed: () {},
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Andet beløb",
                    border: InputBorder.none,
                  ),
                ))),
      ],
    );
  }

  Widget _detailsSection() {
    return Column(
      children: [
        const MyTextFieldWidget(
          hintText: 'Display navn',
        ),
        const MyTextFieldWidget(
          hintText: 'Email adresse',
        ),
        const MyTextFieldWidget(
          title: "Hold",
          hintText: 'Holdnavn',
          helperText: "Valgfrit",
        ),
        const MyTextFieldWidget(
          hintText: 'Besked',
          helperText: "Valgfrit; til visning i hjemmeside",
          maxLines: 3,
        ),
        MyCheckBoxList(
            title: Text(
                "JA! Jeg vil gerne få opdateringer om rejsen for denne indsamling"),
            value: wantsToReceiveUpdates,
            onChanged: (bool? newVal) {
              setState(() {
                if (newVal == null) return;
                wantsToReceiveUpdates = newVal;
              });
            }),
        MyCheckBoxList(
            title: Text("Gør venligst min støtte anonym"),
            value: keepDonationAnonymous,
            onChanged: (bool? newVal) {
              setState(() {
                if (newVal == null) return;
                keepDonationAnonymous = newVal;
              });
            }),
      ],
    );
  }
}

class MyCheckBoxList extends StatelessWidget {
  const MyCheckBoxList(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.title});

  final bool value;
  final Function(bool? newVal) onChanged;
  final Text title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: title,
        value: value,
        onChanged: onChanged);
  }
}

class MyTextFieldWidget extends StatelessWidget {
  const MyTextFieldWidget(
      {super.key,
      required this.hintText,
      this.helperText,
      this.maxLines,
      this.title});

  final String hintText;
  final String? title;
  final String? helperText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title == null ? hintText.toUpperCase() : title!.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 4,
          ),
          TextField(
              maxLines: maxLines,
              decoration: InputDecoration(
                  helperText: helperText,
                  filled: true,
                  hintText: hintText,
                  border: const OutlineInputBorder())),
        ],
      ),
    );
  }
}
