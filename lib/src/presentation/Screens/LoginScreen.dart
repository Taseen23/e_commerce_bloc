import 'package:e_commerce_bloc/src/blocs/authentication/bloc/login_bloc.dart';
import 'package:e_commerce_bloc/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../../routes/route_page.dart';

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
            BlocConsumer<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SocialLoginButton(
                            buttonType: SocialLoginButtonType.facebook,
                            onPressed: () {}),
                        const Gap(10),
                        SocialLoginButton(
                            buttonType: SocialLoginButtonType.twitter,
                            onPressed: () {}),
                        const Gap(10),
                        SocialLoginButton(
                          buttonType: SocialLoginButtonType.google,
                          onPressed: () => context
                              .read<LoginBloc>()
                              .add(RequestGoogleLogin()),
                        ),
                      ],
                    ),
                  );
                },
                listener: (context, state) {}),
            const Gap(150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface)),
                TextButton(
                    onPressed: () => context.pushNamed(Routes.LoginRoute),
                    child: Text("Signup",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface)))
              ],
            ),
            InkWell(
              onTap: () => context.pushNamed(Routes.RegisterRoute),
              child: Container(
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
              ),
            )
          ],
        ));
  }
}
