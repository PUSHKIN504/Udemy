import 'package:flutter/material.dart';
import 'package:udemy_proyect/models/user.dart';
import 'package:udemy_proyect/screens/edit_profile_page.dart';
import 'package:udemy_proyect/screens/list_screen.dart';
import 'package:udemy_proyect/utils/user_preferences.dart';
import 'package:udemy_proyect/widgets/appbar_widget.dart';
import 'package:udemy_proyect/widgets/button_widget.dart';
import 'package:udemy_proyect/widgets/numbers_widget.dart';
import 'package:udemy_proyect/widgets/profile_widget.dart';
import 'package:udemy_proyect/screens/login_page.dart'; // Importa la pantalla de inicio de sesión

class user_screen extends StatefulWidget {
  const user_screen({Key? key}) : super(key: key);

  @override
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
              buildUpgradeButton('Cerrar Sesion', () {
                // Al presionar el botón de cerrar sesión, navega a la pantalla de inicio de sesión
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginPage(), // Puedes ajustar el nombre de la pantalla según corresponda
                ));
              }),
              SizedBox(width: 16),
              buildUpgradeButton('Listado', () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => TablaUsuarios(), // Puedes ajustar el nombre de la pantalla según corresponda
                ));
              }),
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton(String text, VoidCallback onClicked) => ButtonWidget(
        text: text,
        onClicked: onClicked,
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
