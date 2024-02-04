import 'package:coffee_shop/components/signin_signup_option_buttons.dart';
import 'package:flutter/material.dart';

import '../components/signin_form.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late TextEditingController _email;
  late TextEditingController _password;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();

    _email = TextEditingController();
    _password = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  late final paddingHorizontal = MediaQuery.of(context).size.width;
  late final paddingVertical =
      MediaQuery.of(context).size.height + AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
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
          child: SignInForm(
            formKey: _formKey,
            email: _email,
            password: _password,
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

  @override
  void dispose() {
    super.dispose();
    _email;
    _password;
    _formKey;
  }
}
