// import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_proyect/models/user.dart';

// Future<Set<String>> getuser() async {
//           final prefs = await SharedPreferences.getInstance();
//           final username = prefs.getString('username') ?? '';
//           // final password = prefs.getString('password') ?? '';
//           return {username};
//           // ignore: avoid_print, dead_code, prefer_interpolation_to_compose_strings
//         }
// final user = getuser();
// Future<Set<String>> getcorreo() async {
//           final prefs = await SharedPreferences.getInstance();
//           final correo = prefs.getString('correo') ?? '';
//           // final password = prefs.getString('password') ?? '';
//           return {correo};
//           // ignore: avoid_print, dead_code, prefer_interpolation_to_compose_strings
//         }
//           final correo = getcorreo();
          
class UserPreferences {
  static const myUser = User(
    imagePath:
        'https://i0.wp.com/www.stignatius.co.uk/wp-content/uploads/2020/10/default-user-icon.jpg?fit=415%2C415&ssl=1',
    name:'User',
    email:'User@gmail.com',
    about:'',
    isDarkMode: false,
  );
}
