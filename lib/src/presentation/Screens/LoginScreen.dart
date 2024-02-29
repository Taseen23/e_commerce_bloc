import 'package:e_commerce_bloc/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Let's Get Started",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.facebook,
                  ),
                  const Gap(20),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.twitter,
                  ),
                  const Gap(20),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.email,
                  ),
                  const Gap(20),
                ],
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              height: 80.h,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Create An Account",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
              // width: 200,
            )
          ],
        ));
  }
}
