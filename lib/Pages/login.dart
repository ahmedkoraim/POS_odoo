import 'package:flutter/material.dart';
import 'package:pos/Models/ProuductModel.dart';
import 'package:pos/Pages/home.dart';
import '../main.dart';
import 'package:odoo/odoo.dart';
import '../Services/ProuductServices.dart';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Services/ProuductServices.dart';

class login extends StatefulWidget {
  static const String loginRoute = 'login';
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

late String username;
late String passwrd;

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 150,
                width: 100,
                child: Image.asset('Images/PosSystem.png')),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (Value) {
                  username = Value;
                },
                decoration: const InputDecoration(
                  hintText: "ُEnter Your Email",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  passwrd = value;
                },
                decoration: const InputDecoration(
                  hintText: "ُEnter Your Password",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Material(
                elevation: 5,
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  minWidth: 100,
                  height: 40,
                  onPressed: () async {
                    if (username == login) {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => home()));
                    } else
                      (e) {
                        print(e);
                      };
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
