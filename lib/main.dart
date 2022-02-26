import 'package:flutter/material.dart';
import 'package:flutter_iscae2/home.dart';

import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => const HomePage(),},
home: MainScreen(),
    );
  }

}