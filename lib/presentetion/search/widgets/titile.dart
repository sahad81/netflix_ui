import 'package:flutter/material.dart';

// ignore: camel_case_types
class titile extends StatelessWidget {
  const titile({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}