import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //   mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("SignUp"),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Username"),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Username"),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Username"),
                ),
              )
            ],
          ),
        ));
  }
}
