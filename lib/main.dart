import 'package:flutter/material.dart';
import 'package:work/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.light,
      // theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        // MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
