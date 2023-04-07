import 'package:first_company_project/Screens/home_screen.dart';
import 'package:first_company_project/Screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        themeMode: ThemeMode.light, // Change it as you want
        theme: ThemeData(
            primaryColor: Colors.white,
            primaryColorBrightness: Brightness.light,
            brightness: Brightness.light,
            primaryColorDark: Colors.black,
            canvasColor: Colors.white,
            // next line is important!
            appBarTheme: AppBarTheme(brightness: Brightness.light)
        ),
        darkTheme: ThemeData(
            primaryColor: Colors.black,
            primaryColorLight: Colors.black,
            brightness: Brightness.dark,
            primaryColorDark: Colors.black,
            indicatorColor: Colors.white,
            canvasColor: Colors.black,
            // next line is important!
            appBarTheme: AppBarTheme(brightness: Brightness.dark)),
        debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

            body: LoginScreen(),

            // BottomNavigation(),

        ),
      )
    );
  }
}
