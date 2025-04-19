import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:shar/interfaces/User.dart';
import 'package:shar/screen/MapScreen.dart';
import 'package:shar/screen/LoginPage.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/screen/SearchFull.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppMainHeader extends StatefulWidget {
  const AppMainHeader({super.key});

  @override
  State<AppMainHeader> createState() => _AppMainHeaderState();
}

class _AppMainHeaderState extends State<AppMainHeader> {
  late UserBloc userBlocInstance;
  
  @override
  void initState() {
    super.initState();
    userBlocInstance = BlocProvider.of<UserBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var statusBarHeight = mediaQuery.viewPadding.top;

    return Container(
      margin: EdgeInsets.only(top: statusBarHeight),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: statusBarHeight > 0 ? 5 : 15,
      ),
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 45,
                child: Image(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    transform: Matrix4.translationValues(0.0, 10.0, 0.0),
                    child: const Text(
                      'Ubicación',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.pin_drop,
                      size: 16,
                      color: yellowColor,
                    ),
                    label: const Text(
                      'Bogotá, Colombia',
                      style: TextStyle(
                        fontSize: 10,
                        color: greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: BlocBuilder<UserBloc, UserState>(
                      builder: (BuildContext context, UserState state) {
                        try {
                          UserInterface user = state.props[1] as UserInterface;

                          if (user.logged) {
                            return PopupMenuButton(
                              onSelected: (item) {
                                print(user);
                                UserInterface initialUser = UserInterface(
                                  id: user.id,
                                  name: user.name,
                                  email: user.email,
                                  password: user.password,
                                  logged: false,
                                );
                                userBlocInstance.add(
                                  FindUserOnLogOut(
                                    user: initialUser,
                                  ),
                                );
                              },
                              itemBuilder: (BuildContext bc) {
                                return const [
                                  PopupMenuItem(
                                    value: 0,
                                    height: 20,
                                    child: Text("Salir"),
                                  ),
                                ];
                              },
                              child: CircleAvatar(
                                backgroundColor: yellowColor,
                                child: Text(
                                  user.email.substring(0, 1).toUpperCase(),
                                  style: const TextStyle(
                                    color: blackColor,
                                  ),
                                ),
                              ),
                            );
                          }
                        } catch (e) {
                          print("Ha ocurrido un error en el login");
                        }

                        return IconButton(
                          iconSize: 20,
                          style: ButtonStyle(
                            foregroundColor:
                                WidgetStateProperty.all<Color>(whiteColor),
                            backgroundColor: WidgetStateProperty.all<Color>(
                              yellowColor,
                            ),
                          ),
                          icon: const Icon(Icons.person),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  /*IconButton(
                    iconSize: 20,
                    style: ButtonStyle(
                      foregroundColor:
                          WidgetStateProperty.all<Color>(whiteColor),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        yellowColor,
                      ),
                    ),
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // ...
                    },
                  ),*/
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Searchfull(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 8,
              ),
              child: Card(
                elevation: 2,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  side: const BorderSide(
                    color: greyLightColor,
                    width: 0.3,
                  ),
                ),
                color: whiteColor,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 34.5,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 20,
                        child: Image(
                          image: AssetImage('images/icons/search-black.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ingresa la Búsqueda...",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
