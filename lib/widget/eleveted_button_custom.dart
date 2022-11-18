import 'package:flutter/material.dart';

class ElevetedButtonCustom extends StatefulWidget {
  final String description;

  const ElevetedButtonCustom({super.key, required this.description});

  @override
  State<ElevetedButtonCustom> createState() => _ElevetedButtonCustomState();
}

class _ElevetedButtonCustomState extends State<ElevetedButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          minimumSize:
              MaterialStatePropertyAll<Size?>(Size.fromHeight(50)), // NEW
        ),
        onPressed: () {},
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
            child: Text(
              widget.description.toUpperCase(),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
