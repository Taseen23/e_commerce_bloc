import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Let's Get Started",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200,
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.facebook,
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.twitter,
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.email,
            ),
            Container(
              color: Colors.blue,
              height: 20,
              width: 200,
            )
          ],
        ));
  }
}
