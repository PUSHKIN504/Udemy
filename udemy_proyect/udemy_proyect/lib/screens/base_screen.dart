import 'package:flutter/foundation.dart';
import 'package:udemy_proyect/constants/color.dart';
import 'package:udemy_proyect/constants/icons.dart';
import 'package:udemy_proyect/constants/size.dart';
import 'package:udemy_proyect/screens/dashboard_screen.dart';
import 'package:udemy_proyect/screens/featuerd_screen.dart';
import 'package:udemy_proyect/screens/mis_curso.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_proyect/screens/user_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  
  late String _username = '';
    @override
  void initState() {
    super.initState();
    // Llama a la función getCredentials() al iniciar el estado
    getCredentials().then((credentials) {
      // Almacena el nombre de usuario en la variable _username
      _username = credentials['username'] ?? '';
      // Imprime el nombre de usuario en la consola
      // ignore: avoid_print
      print('Nombre de usuario: $_username');
    });
  }

  Future<Map<String, String>> getCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username') ?? '';
    return {'username': username};
  }
  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    MisCursosScreen(userCategories: [],),
    DashBoardScreen(),
  ];
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                icFeatured,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icFeaturedOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                icLearning,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icLearningOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: "Mis Cursos",
            ),
              BottomNavigationBarItem(
              activeIcon: Image.asset(
                icDasboard,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icDasboardOulined,
                height: kBottomNavigationBarItemSize,
              ),
              label: "Dashboard's",
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('_selectedIndex', _selectedIndex));
    properties.add(IntProperty('_selectedIndex', _selectedIndex));
  }
}
