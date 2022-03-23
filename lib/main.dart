import 'package:flutter/material.dart';
import 'src/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'sendbox',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey, fontFamily: "Larsseit"),
        home: const WelcomePage());
  }
}
