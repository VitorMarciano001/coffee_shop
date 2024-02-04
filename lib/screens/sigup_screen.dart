// ignore_for_file: unused_local_variable

import '../components/signup_form.dart';
import '../components/signin_signup_option_buttons.dart';
import '../theme/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width;
    final paddingVertical =
        MediaQuery.of(context).size.height + AppBar().preferredSize.height;
    return Material(
      child: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: paddingVertical * .31437126,
            child: Image.asset('assets/images/coffee_signup.png',
                fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: paddingVertical * .68113772,
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: background.shade800,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: paddingVertical * .016766467),
                  SizedBox(
                    height: paddingVertical * .060778443,
                    width: paddingHorizontal * .461805556,
                    child: Text(
                        'Insira seu e-mail e senha '
                        'para se registrar no nosso App.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  SizedBox(height: paddingVertical * .03038922),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: paddingHorizontal * .036458333,
                    ),
                    child: const SignUpForm(),
                  ),
                  SizedBox(
                    height: paddingVertical * .016766467,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ja possui uma conta?',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  SizedBox(
                    height: paddingVertical * .03038922,
                  ),
                  const SignInSignUpOptionButtons()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
