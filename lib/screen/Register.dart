import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/User.dart';
import 'package:shar/screen/LoginPage.dart';
import 'package:shar/screen/termsAndConditions.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final repeatEmail = TextEditingController();
  final password = TextEditingController();
  final repearPassword = TextEditingController();
  late UserBloc userBlocInstance;

  @override
  void initState() {
    super.initState();
    userBlocInstance = BlocProvider.of<UserBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 90,
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: const Image(
                      image: AssetImage("images/logo.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: const Text(
                    'REGISTRARSE',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    const pattern =
                        r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                    final regex = RegExp(pattern);

                    if (value == null || value.isEmpty) {
                      return 'Ingresa correo electrónico';
                    }

                    if (!regex.hasMatch(value)) {
                      return 'No es un correo electrónico';
                    }

                    if (!(email == repeatEmail)) {
                      return 'Los correos electronicos no coinciden';
                    }

                    return null;
                  },
                  autofocus: false,
                  style: const TextStyle(
                    fontSize: 12,
                    color: blackColor,
                  ),
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                      fontSize: 9,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 207, 207),
                    hintText: 'Correo electrónico',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyLightColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: repeatEmail,
                  validator: (value) {
                    const pattern =
                        r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                    final regex = RegExp(pattern);

                    if (value == null || value.isEmpty) {
                      return 'Ingresa correo electrónico';
                    }

                    if (!regex.hasMatch(value)) {
                      return 'No es un correo electrónico';
                    }

                    if (!(email == repeatEmail)) {
                      return 'Los correos electronicos no coinciden';
                    }

                    return null;
                  },
                  autofocus: false,
                  style: const TextStyle(
                    fontSize: 12,
                    color: blackColor,
                  ),
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                      fontSize: 9,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 207, 207),
                    hintText: 'Repite tu correo electrónico',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyLightColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingresa contraseña';
                    }
                    if (!(repearPassword == password)) {
                      return 'Las contraseña no coinciden';
                    }
                    return null;
                  },
                  autofocus: false,
                  style: const TextStyle(
                    fontSize: 12,
                    color: blackColor,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 207, 207),
                    hintText: 'Contraseña',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    errorStyle: const TextStyle(
                      fontSize: 9,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyLightColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: repearPassword,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingresa contraseña';
                    }
                    if (!(repearPassword == password)) {
                      return 'Las contraseña no coinciden';
                    }
                    return null;
                  },
                  autofocus: false,
                  style: const TextStyle(
                    fontSize: 12,
                    color: blackColor,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 207, 207),
                    hintText: 'Repite tu contraseña',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    errorStyle: const TextStyle(
                      fontSize: 9,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: greyLightColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: GestureDetector(
                    //InkWell
                    child: const Text(
                      'Al dar clic en registrarse acepta nuestra politica de datos y nuestros términos y condiciones.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Termsandconditions(),
                        ),
                      ),
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(blackColor),
                    ),
                    onPressed: () {
                      var registerUser = UserInterface(
                        id: 0,
                        name: "example",
                        email: "email@email.com",
                        password: "123",
                        logged: true,
                      );

                      print(registerUser);

                      /*userBlocInstance.add(
                        AddUserToDB(
                          user: registerUser,
                        ),
                      );*/

                      userBlocInstance.add(
                        FindUserOnLogin(
                          user: registerUser,
                        ),
                      );
                      if (_formKey.currentState!.validate()) {
                        print(email.text);
                        print(password.text);
                      }
                    },
                    child: const Text(
                      'REGISTRARSE',
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        yellowColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'INGRESAR',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
