
import 'package:flutter/material.dart';
import 'package:udemy_proyect/models/user.dart';
// import 'package:udemy_proyect/screens/edit_profile_page.dart';
import 'package:udemy_proyect/utils/user_preferences.dart';
import 'package:udemy_proyect/widgets/appbar_widget.dart';
import 'package:udemy_proyect/widgets/button_widget.dart';
import 'package:udemy_proyect/widgets/numbers_widget.dart';
import 'package:udemy_proyect/widgets/profile_widget.dart';
class user_screen extends StatefulWidget {
  const user_screen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _user_screenState createState() => _user_screenState();
}

class _user_screenState extends State<user_screen> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Cerrar',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
