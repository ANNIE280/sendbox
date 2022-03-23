import 'package:flutter/material.dart';

import 'auth/login_page.dart';
import 'utils/navigation.dart';
import 'auth/signin_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold();

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/image/sendbox.png'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome,\nLet's get started.",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 50,
                    child: TextButton(
                        onPressed: () {
                          pushResult(context, const Login());
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: const RoundedRectangleBorder()),
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  )),
                  Expanded(
                      child: SizedBox(
                          height: 50,
                          child: TextButton(
                              onPressed: () {
                                pushResult(context, const SignIn());
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.pink.withOpacity(.1),
                                  shape: const RoundedRectangleBorder()),
                              child: const Text(
                                'CREATE ACCOUNT',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))))
                ],
              ),
            )
          ],
        )));
  }
}
