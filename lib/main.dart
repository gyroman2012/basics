import 'package:flutter/material.dart';
import 'Auth.dart';
// ignore: unused_import
import 'LoginPage.dart';
import 'RootPage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: RootPage(auth: Auth()),
    );
  }
}
