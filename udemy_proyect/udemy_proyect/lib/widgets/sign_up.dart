import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:udemy_proyect/models/MunicipiosModel.dart';
import 'package:udemy_proyect/models/Usuario.dart';
import 'package:udemy_proyect/screens/login_page.dart';
import 'package:udemy_proyect/widgets/theme.dart';
// ignore: unused_import
import 'package:udemy_proyect/widgets/snackbar.dart';

class SignUp extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SignUp({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FocusNode focusNodePassword = FocusNode();
  final FocusNode focusNodeConfirmPassword = FocusNode();
  final FocusNode focusNodeDirec = FocusNode();
  final FocusNode focusNodeApellido = FocusNode();
  final FocusNode focusNodeUsuario = FocusNode();
  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodeName = FocusNode();
  final FocusNode focusNodetelef = FocusNode();

  bool _obscureTextPassword = true;
  bool _obscureTextConfirmPassword = true;

  TextEditingController signupNameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController telefController = TextEditingController();
  TextEditingController DirecController = TextEditingController();
  
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupUsuarioController = TextEditingController();
  TextEditingController signupApellidoController = TextEditingController();
  TextEditingController signupConfirmPasswordController = TextEditingController();

  List<String> dropdownItems = []; // Lista para almacenar los datos del DropDownList
  List<String> dropdownSex = ['F','M']; // Lista para almacenar los datos del DropDownList
  String selectedValue = ''; // Valor seleccionado en el DropDownList
  String selectedSexo = ''; // Valor seleccionado en el DropDownList

  @override
  void initState() {
    super.initState();
    _fetchDropdownData();
  }

  Future<void> _fetchDropdownData() async {
    String url = 'https://localhost:44392/API/Departamento/ListMun';

    try {
      final response = await http.get(Uri.parse(url));
      final res = jsonDecode(response.body);
      
      if (res['data'] != null && res['data'].length > 0) {
        setState(() {
          dropdownItems = List<String>.from(res['data'].map((item) => item['mun_Descripcion']));
          selectedValue = dropdownItems.first; // Establecer el primer valor como seleccionado por defecto
        });
      } else {
        // Manejar el caso donde no hay datos
      }
    } catch (e) {
      // Manejar errores de red u otros errores
    }
  }

  Future<void> _registerUser() async {
    final String name = signupNameController.text;
    final String telef = telefController.text;
    final String direc = DirecController.text;
    final String apellido = signupApellidoController.text;
    final String usuario = signupUsuarioController.text;
    final String email = signupEmailController.text;
    final String password = signupPasswordController.text;
    // ignore: unused_local_variable
    final String confirmPassword = signupConfirmPasswordController.text;

    // Validar campos aquí si es necesario antes de enviar los datos

    final Map<String, dynamic> userData = {
      'usu_Nombre': name,
      'usu_Usuario': usuario,
      'usu_CorreoElectronico': email,
      'usu_Contrasena': password,
      'usu_Apellido': apellido,
      'usu_Sexo':selectedSexo,
      'usu_Direccion':direc,
      'mun_Descripcion':selectedValue,
      'usu_Telefono':telef,

      // Agregar más campos según sea necesario
    };

    final Uri url = Uri.parse('https://localhost:44392/API/Usuario/crearusu');

    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(userData),
    );

    if (response.statusCode == 200) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            // ignore: prefer_const_constructors
            content: Text('Usuario Creado'),
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
      } 
      
      else {
        // Error al registrar al usuario
        // Puedes mostrar un mensaje de error o manejar la respuesta según sea necesario
      }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                  child: SizedBox(
                    width: 300.0,
                    height: 850.0,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodeName,
                            controller: signupNameController,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            autocorrect: false,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                              ),
                              hintText: 'Nombre',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodeEmail.requestFocus();
                            },
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodeApellido,
                            controller: signupApellidoController,
                            autocorrect: false,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                              ),
                              hintText: 'Apellido',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodePassword.requestFocus();
                            },
                          ),
                        ),
                        
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          child: DropdownButtonFormField<String>(
                            value: selectedValue,
                            items: dropdownItems.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value!;
                                // ignore: avoid_print
                                print(selectedValue);
                              });
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.solidAddressCard,
                                color: Colors.black,
                              ),
                               hintText: 'Ciudad',
                              hintStyle: TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                              ),
                              
                            ),
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                       
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                          child: DropdownButtonFormField<String>(
                            value: selectedSexo.isNotEmpty ? selectedSexo : null, // Usa null si selectedSexo está vacío
                            items: dropdownSex.map((String valueS) {
                              return DropdownMenuItem<String>(
                                value: valueS,
                                child: Text(valueS),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                selectedSexo = value ?? ''; // Usa un valor predeterminado si value es nulo
                                // ignore: avoid_print
                                print(selectedSexo);
                              });
                            },
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                FontAwesomeIcons.solidAddressCard,
                                color: Colors.black,
                              ),
                              hintText: 'Sexo',
                              // ignore: prefer_const_constructors
                              hintStyle: TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodeEmail,
                            controller: signupEmailController,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                              ),
                              hintText: 'Correo electrónico',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodePassword.requestFocus();
                            },
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodeDirec,
                            controller: DirecController,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.earth,
                                color: Colors.black,
                              ),
                              hintText: 'Direccion',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodePassword.requestFocus();
                            },
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodetelef,
                            controller: telefController,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.phone,
                                color: Colors.black,
                              ),
                              hintText: 'Telefono',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodePassword.requestFocus();
                            },
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodeUsuario,
                            controller: signupUsuarioController,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                              ),
                              hintText: 'Usuario',
                              hintStyle: TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                            ),
                            onSubmitted: (_) {
                              focusNodePassword.requestFocus();
                            },
                          ),
                        ),
                        Container(
                          width: 250.0,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                          child: TextField(
                            focusNode: focusNodePassword,
                            controller: signupPasswordController,
                            obscureText: _obscureTextPassword,
                            autocorrect: false,
                            style: const TextStyle(
                                fontFamily: 'WorkSansSemiBold',
                                fontSize: 16.0,
                                color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: const Icon(
                                FontAwesomeIcons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Contraseña',
                              hintStyle: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold', fontSize: 16.0),
                              suffixIcon: GestureDetector(
                                onTap: _toggleSignup,
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
                              focusNodeConfirmPassword.requestFocus();
                            },
                          ),
                        ),
                       
                         
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 845.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Color(0xFF1f305e), // Color sólido #1f305e
                  ),
                  child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: CustomTheme.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        'Crear',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: 'WorkSansBold'),
                      ),
                    ),
                    onPressed: () => _registerUser(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _toggleSignup() {
    setState(() {
      _obscureTextPassword = !_obscureTextPassword;
    });
  }

  void _toggleSignupConfirm() {
    setState(() {
      _obscureTextConfirmPassword = !_obscureTextConfirmPassword;
    });
  }
}
