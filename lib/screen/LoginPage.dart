import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/User.dart';
import 'package:shar/screen/Register.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/screen/SearchFull.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
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
            child: BlocListener<UserBloc, UserState>(
              listener: (BuildContext context, state) {
                try {
                  UserInterface user = state.props[1] as UserInterface;

                  if (!user.logged) {
                    snackBarAddCart(
                        context, "Error Login: ", "Los datos no son correctos");
                  } else if (user.logged) {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 150,
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
                      'INGRESAR',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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

                      return null;
                    },
                    autofocus: false,
                    style: const TextStyle(
                      fontSize: 12,
                      color: blackColor,
                      fontFamily: "Inter-SemiBold",
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
                      return null;
                    },
                    autofocus: false,
                    style: const TextStyle(
                      fontSize: 12,
                      color: blackColor,
                      fontFamily: "Inter-SemiBold",
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
                        if (_formKey.currentState!.validate()) {
                          // print(email.text);
                          // print(password.text);
                          var registerUser = UserInterface(
                            id: 0,
                            name: "",
                            email: email.text,
                            password: password.text,
                            logged: true,
                          );

                          userBlocInstance.add(
                            FindUserOnLogin(
                              user: registerUser,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'INGRESAR',
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
                            builder: (context) => const Register(),
                          ),
                        );
                      },
                      child: const Text(
                        'REGISTRARSE',
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
      ),
    );
  }
}
