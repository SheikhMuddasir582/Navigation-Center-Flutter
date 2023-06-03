import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';
import 'package:navigation_drawer/screen_three.dart';
import 'package:navigation_drawer/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes:
      {
        HomeScreen.id : (context) => HomeScreen(),
        ScreenTwo.id : (context) => ScreenTwo(),
        ScreenThree.id : (context) => ScreenThree(),
      },
      //home: HomeScreen(),
    );
  }
}
