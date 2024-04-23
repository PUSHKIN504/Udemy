import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  // ignore: use_super_parameters
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          // ignore: prefer_const_constructors
          foregroundColor: const Color.fromRGBO(0, 34, 68, 1), shape: StadiumBorder(),
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        // ignore: sort_child_properties_last
        child: Text(text),
        onPressed: onClicked,
      );
}
