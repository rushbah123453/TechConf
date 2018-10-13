import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'signup_page.dart';
import 'home_navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    SignupPage.tag: (context) => SignupPage(),
    HomeNav.tag: (context) => HomeNav(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
