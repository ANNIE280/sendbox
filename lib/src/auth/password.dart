// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sendbox/src/auth/login_page.dart';
import 'package:sendbox/src/utils/gap.dart';
import 'package:sendbox/src/utils/navigation.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black.withOpacity(.05)))),
            // child: IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.cancel),
            // ),
            child: TextButton(
              onPressed: () {
                pushResult(context, const Login());
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'X',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black.withOpacity(.05)))),
            child: Row(
              children: [
                Image.asset('assets/image/sendbox.png'),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          addGap(40),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Enter your email address and we'll send you a link to reset your password",
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ),
                addGap(30),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                ),
                addGap(40),
                Text.rich(
                  TextSpan(children: const [
                    TextSpan(
                        text:
                            "By continuing, I represent that I have read, understand, and fully agree to the Sendbox "),
                    TextSpan(
                      text: "terms of services",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "privacy policy.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    )
                  ]),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5)),
                ),
                addGap(20),
                Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.pink.withOpacity(0.4)),
                        child: Center(
                            child: Text(
                          "CONITNUE",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.5)),
                        ))))
              ],
            ),
          )
        ],
      )),
    );
  }
}
