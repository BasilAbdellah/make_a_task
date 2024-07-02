import 'package:flutter/material.dart';
import 'package:haha/HomeScreen/HomeScreen.dart';
import 'package:haha/login/loginScreen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        LoginScreen.routeName:(context)=>LoginScreen(),
        HomeScreen.routeName:(context)=>HomeScreen()
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}

