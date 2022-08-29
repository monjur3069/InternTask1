import 'package:flutter/material.dart';
import 'package:task/pages/login_page.dart';
import 'package:task/pages/registration_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName : (_) =>LoginPage(),
        RegistrationPage.routeName : (_) =>RegistrationPage(),
      },
    );
  }
}


