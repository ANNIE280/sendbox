// ignore_for_file: avoid_unnecessary_containers, unused_local_variable, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sendbox/src/auth/password.dart';
import 'package:sendbox/src/auth/signin_page.dart';
import 'package:sendbox/src/utils/gap.dart';
import 'package:sendbox/src/utils/navigation.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final pageController = PageController();
  int currentPage = 0;

  List get tabItems {
    return ["Login with Email", "Login with Phone"];
  }

  bool fieldsValidated = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Row(
                    children: [
                      BackButton(),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            pushResult(context, const SignIn());
                          },
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              backgroundColor: Colors.black.withOpacity(.02),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Text("Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)))
                    ],
                  ),
                ),
                addGap(20),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                addGap(10),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(.05)))),
                  child: Row(
                    children: List.generate(tabItems.length, (p) {
                      String val = tabItems[p];

                      bool active = currentPage == p;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // pageController.jumpToPage(p);
                            currentPage = p;
                            setState(() {});
                          },
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.fromLTRB(
                                p == 1 ? 5 : 0, 0, p == 0 ? 5 : 0, 0),
                            alignment: Alignment.center,
                            color: Colors.black.withOpacity(active ? 1 : 0.05),
                            child: Text(
                              val,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: active ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                //   decoration: BoxDecoration(
                //       border: Border(
                //           bottom:
                //               BorderSide(color: Colors.black.withOpacity(.05)))),
                //   child: Row(children: [tabItem(0), tabItem(1)]),
                // ),

                // Expanded(
                //     child: PageView(
                //         controller: pageController,
                //         onPageChanged: (p) {
                //           print(p);
                //           currentPage = p;
                //           setState(() {});
                //         },
                //         children: [])),

                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Builder(builder: (c) {
                        if (currentPage == 0) {
                          return textInput("Email Address", emailController);
                        }
                        return textInput("Phone Number", phoneController,
                            isPhone: true);
                      }),
                      textInput("Password", passController),
                      InkWell(
                          onTap: () {
                            pushResult(context, const Password());
                          },
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
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
                      text: "privacy policy.s",
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
                            backgroundColor: Colors.pink
                                .withOpacity(fieldsValidated ? 1 : 0.4)),
                        child: Center(
                            child: Text(
                          "CONITNUE",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                                  .withOpacity(fieldsValidated ? 1 : 0.5)),
                        ))))
              ],
            ),
          ),
        ),
      ),
    );
  }

  textInput(String hint, TextEditingController controller,
      {bool isPhone = false}) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          if (isPhone)
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20),
              width: 100,
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.black.withOpacity(.05)))),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "COUNTRY",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        addGap(5),
                        Text(
                          "NG",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  )
                ],
              ),
            ),
          Expanded(
              child: TextField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                labelText: hint,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 2.0))),
          )),
        ],
      ),
    );
  }

//   tabItem(int p) {
//     String val = tabItems[p];
//     bool active = currentPage == p;
//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           pageController.jumpToPage(p);
//         },
//         child: Container(
//           height: 80,
//           margin: EdgeInsets.fromLTRB(p == 1 ? 5 : 0, 0, p == 0 ? 5 : 0, 0),
//           alignment: Alignment.center,
//           color: Colors.black.withOpacity(active ? 1 : 0.05),
//           child: Text(
//             val,
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 color: active ? Colors.white : Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
}
