import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    // ignore: prefer_const_constructors
    iconTheme: IconThemeData(
        color: Colors
            .black), // set backbutton color here which will reflect in all screens.
    // ignore: prefer_const_constructors
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
