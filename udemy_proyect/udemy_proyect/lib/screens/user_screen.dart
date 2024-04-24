import 'package:flutter/material.dart';
import 'package:udemy_proyect/models/user.dart';
import 'package:udemy_proyect/screens/edit_profile_page.dart';
import 'package:udemy_proyect/utils/user_preferences.dart';
import 'package:udemy_proyect/widgets/appbar_widget.dart';
import 'package:udemy_proyect/widgets/button_widget.dart';
import 'package:udemy_proyect/widgets/numbers_widget.dart';
import 'package:udemy_proyect/widgets/profile_widget.dart';

// ignore: camel_case_types

class user_screen extends StatefulWidget {
  const user_screen({Key? key}) : super(key: key);

  @override
  _user_screenState createState() => _user_screenState();
}

// ignore: camel_case_types
class _user_screenState extends State<user_screen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        // ignore: prefer_const_constructors
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildUpgradeButton('Salir', () {}),
              SizedBox(width: 16),
              buildUpgradeButton('Listado', () {}),
            ],
          ),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton(String text, VoidCallback onClicked) => ButtonWidget(
        text: text,
        onClicked: onClicked,
      );

  Widget buildAbout(User user) => Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Text(
              '',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
