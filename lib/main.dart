import 'package:ex_birr/screens/apperance/bloc/theme_bloc.dart';
import 'package:ex_birr/screens/apperance/bloc/theme_state.dart';
import 'package:ex_birr/screens/home/home_screen.dart';
import 'package:ex_birr/screens/sidebar/components/sidebar_layout.dart';
import 'package:ex_birr/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/secured_storage.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _securedStorage = SecuredStorage();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(_securedStorage)),
        // TODO: you can add additional providers here
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              highlightColor: kPrimaryColor,
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: const Color.fromARGB(255, 243, 248, 251),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: const StadiumBorder(),
                  maximumSize: const Size(double.infinity, 56),
                  minimumSize: const Size(double.infinity, 56),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: kPrimaryLightColor,
                iconColor: kPrimaryColor,
                prefixIconColor: kPrimaryColor,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              highlightColor: kHighlightColor,
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: const Color.fromARGB(51, 50, 50, 100),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  overlayColor: Colors.yellow,
                  elevation: 0,
                  foregroundColor: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: const StadiumBorder(),
                  maximumSize: const Size(double.infinity, 56),
                  minimumSize: const Size(double.infinity, 56),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: kPrimaryDarkBackground,
                iconColor: kPrimaryColor,
                prefixIconColor: kPrimaryColor,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            themeMode: themeState.themeMode,
            // theme: ThemeData(
            //     scaffoldBackgroundColor: Colors.white, primaryColor: Colors.white),
            home: WelcomeScreen(),
            // home: SideBarLayout(),
          );
        },
      ),
    );
  }
}
