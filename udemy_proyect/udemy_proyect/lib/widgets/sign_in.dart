import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:ionicons/ionicons.dart';
import 'package:udemy_proyect/models/Usuario.dart';
import 'package:udemy_proyect/widgets/theme.dart';
import 'package:udemy_proyect/screens/base_screen.dart';
// ignore: unused_import
import 'package:udemy_proyect/widgets/snackbar.dart';
// import 'package:udemy_proyect/models/Usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SignIn({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  late final List<Widget> loginContent;

  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodePassword = FocusNode();
  final List<int> idcursos = [];

  bool _obscureTextPassword = true;

  @override
  void initState() {
    loginContent = [
      inputField('Usuario', Ionicons.mail_outline, loginEmailController),
      inputField('Clave', Ionicons.lock_closed_outline, loginPasswordController),
      loginButton('Registrar'),
      forgotPassword(),
    ];

    super.initState();
  }

  @override
  void dispose() {
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 300.0,
                  height: 190.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusNodeEmail,
                          controller: loginEmailController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: 'WorkSansSemiBold',
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            hintText: 'Usuario',
                            hintStyle: TextStyle(
                                fontFamily: 'WorkSansSemiBold', fontSize: 17.0),
                          ),
                          onSubmitted: (_) {
                            focusNodePassword.requestFocus();
                          },
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: const Color.fromARGB(255, 26, 26, 26),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusNodePassword,
                          controller: loginPasswordController,
                          obscureText: _obscureTextPassword,
                          style: const TextStyle(
                              fontFamily: 'WorkSansSemiBold',
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: const Icon(
                              FontAwesomeIcons.lock,
                              size: 22.0,
                              color: Colors.black,
                            ),
                            hintText: 'Contraseña',
                            hintStyle: const TextStyle(
                                fontFamily: 'WorkSansSemiBold', fontSize: 17.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleLogin,
                              child: Icon(
                                _obscureTextPassword
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          onSubmitted: (_) {
                            _toggleSignInButton();
                          },
                          textInputAction: TextInputAction.go,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 170.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Color(0xFF1f305e), // Color sólido #1f305e
                ),
                child: MaterialButton(
                  highlightColor: Colors.transparent,
                  splashColor: CustomTheme.loginGradientEnd,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white, // Fuente blanca
                          fontSize: 25.0,
                          fontFamily: 'WorkSansBold'),
                    ),
                  ),
                  onPressed: () => _loginUser(
                      loginEmailController.text, loginPasswordController.text),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  '',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'WorkSansMedium'),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                          Colors.white10,
                          Colors.white,
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 1.0),
                        stops: <double>[0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'WorkSansMedium'),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                          Colors.white,
                          Colors.white10,
                        ],
                        tileMode: TileMode.clamp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _toggleSignInButton() {
    // Implementar lógica para el botón de inicio de sesión
  }

  void _toggleLogin() {
    setState(() {
      _obscureTextPassword = !_obscureTextPassword;
    });
  }

  Future<void> _loginUser(String username, String password) async {
    String apiUrl =
        'http://UdemyHN.somee.com/API/Usuario/LoginHome?Usuario=$username&Contra=$password';

    try {
      final response = await http.get(Uri.parse(apiUrl));
      final res = jsonDecode(response.body);

      if (res['data'].length >= 1) {
        // ignore: avoid_print
        print('credenciales correctas');
        // ignore: unused_local_variable
        final usuario = UsuarioViewModel.fromJson(res['data'][0]);
        
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('correo', usuario.usu_CorreoElectronico as String);
        prefs.setString('username', username);
        prefs.setString('password', password);

        // Future<Set<String>> getcorreo() async {
        //   final prefs = await SharedPreferences.getInstance();
        //   final correo = prefs.getString('correo') ?? '';
        //   // final password = prefs.getString('password') ?? '';
        //   return {correo};
        //   // ignore: avoid_print, dead_code, prefer_interpolation_to_compose_strings
        // }
        //   final correo = getcorreo();
        // ignore: avoid_print
        final usernamed = prefs.getString('username') ?? '';
        // ignore: avoid_print
        print(usernamed);
        Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const BaseScreen()),
      );
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            // ignore: prefer_const_constructors
            content: Text('Credenciales Correctas'),
            backgroundColor: const Color.fromARGB(255, 54, 231, 5),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            margin: const EdgeInsets.only(
              top: 24, // Ajusta este valor según sea necesario
              right: 20,
              left: 20,
            ),
            duration: const Duration(seconds: 2),
          ),
          
        );
      } else {
        // ignore: avoid_print
        print('error: ${res['code']}');
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            // ignore: prefer_const_constructors
            content: Text('Usuario o contraseña incorrectos'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            margin: const EdgeInsets.only(
              top: 24, // Ajusta este valor según sea necesario
              right: 20,
              left: 20,
            ),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (error) {
      // ignore: avoid_print
      print('Error en la solicitud HTTP: $error');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error en la solicitud HTTP: $error'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          margin: const EdgeInsets.only(
            top: 24, // Ajusta este valor según sea necesario
            right: 20,
            left: 20,
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  Widget inputField(String label, IconData icon, TextEditingController controller) {
    // Implementar el widget de campo de entrada
    return Container();
  }

  Widget loginButton(String label) {
    // Implementar el widget de botón de inicio de sesión
    return Container();
  }

  Widget forgotPassword() {
    // Implementar el widget de contraseña olvidada
    return Container();
  }
}
