import 'package:flutter/material.dart';

class RowOfPersonData extends StatelessWidget {
  const RowOfPersonData({Key? key, required this.text, required this.value})
      : super(key: key);
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('$text :  '),
        Text(
          value,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
