import 'package:flutter/material.dart';

import '../utils/app_route.dart';
import '../components/signin_signup_option_buttons.dart';
import '../components/signup_form.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    late final paddingHorizontal = MediaQuery.of(context).size.width;
    late final paddingVertical =
        MediaQuery.of(context).size.height + AppBar().preferredSize.height;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: paddingVertical * 0.20958084,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal * 0.03645833,
          ),
          width: double.maxFinite,
          child: Column(
            children: [
              Text(
                'Seja bem vindo!!',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text('Entre para apreciar nossos produtos',
                  style: Theme.of(context).textTheme.labelLarge)
            ],
          ),
        ),
        SizedBox(height: paddingVertical * 0.072336005),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal * 0.03645833,
          ),
          child: SignUpForm(
            showOrNot: false,
            fn: () =>
                Navigator.of(context).pushReplacementNamed(AppRoute.signin),
          ),
        ),
        SizedBox(
          height: paddingVertical * .03038922,
        ),
        TextButton(
          onPressed: () {},
          child: Text('Criar nova conta',
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        Text(
          "OU",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: paddingVertical * .03038922,
        ),
        const SignInSignUpOptionButtons()
      ],
    ));
  }
}
