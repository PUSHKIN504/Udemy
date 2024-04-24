import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '', ''),
          buildDivider(),
          buildButton(context, '', ''),
          buildDivider(),
          buildButton(context, '', ''),
        ],
      );
  // ignore: sized_box_for_whitespace
  Widget buildDivider() => Container(
        height: 24,
        // ignore: prefer_const_constructors
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              // ignore: prefer_const_constructors
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 2),
            Text(
              text,
              // ignore: prefer_const_constructors
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
