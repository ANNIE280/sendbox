// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sendbox/src/auth/login_page.dart';
import 'package:sendbox/src/utils/gap.dart';
import 'package:sendbox/src/utils/navigation.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String dropdownValue = 'Nigeria';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
              child: Row(
            children: [
              BackButton(),
              Spacer(),
              TextButton(
                  onPressed: () {
                    pushResult(context, const Login());
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      backgroundColor: Colors.black.withOpacity(.02),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)))
            ],
          )),
          Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Validate your phone number",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      )),
                  addGap(20),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'To continue please provide a valid phone number',
                        style: TextStyle(color: Colors.black.withOpacity(.5)),
                      )),
                ],
              )),
          addGap(20),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(0.4)))),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'COUNTRY',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )),
                    addGap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nigeria'),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    )
                  ]),
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text('PHONE NUMBER'),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pink, width: 2.0))),
                )
              ],
            ),
          )),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text:
                      "By continuing, I represent that I have read, understand, and fully agree to the Sendbox "),
              TextSpan(
                text: "terms of services",
                style: TextStyle(
                    // fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                    decoration: TextDecoration.underline),
              ),
              TextSpan(text: " and "),
              TextSpan(
                text: "privacy policy.",
                style: TextStyle(
                    // fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                    decoration: TextDecoration.underline),
              )
            ]),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5)),
          ),
          addGap(20),
          Container(
              height: 70,
              margin: EdgeInsets.only(bottom: 10),
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.pink.withOpacity(.5)),
                  child: Center(
                      child: Text(
                    "CONITNUE",
                    style: TextStyle(
                        fontSize: 16, color: Colors.white.withOpacity(0.5)),
                  ))))
        ]),
      )),
    );
  }
}
