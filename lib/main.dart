import 'package:flutter/material.dart';
import 'package:pos/Pages/Products.dart';

import 'Pages/login.dart';
import 'Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Products.Productroute,
      routes: {
        login.loginRoute: (context) => login(),
        home.HomeRoute: (context) => home(),
        Products.Productroute: (context) => Products(),
      },
    );
  }
}
