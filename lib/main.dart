import 'package:flutter/material.dart';
import 'package:openart/Design/Screens/HomeScreen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Open Art',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Epilogue',
      ),
      home: const HomeScreen(),
    );
  }
}
