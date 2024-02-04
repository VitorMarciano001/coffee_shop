import 'package:flutter/material.dart';

import '../screens/sigup_screen.dart';
import 'signin_signup_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.email,
    required this.password,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width;
    final paddingVertical =
        MediaQuery.of(context).size.height + AppBar().preferredSize.height;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SignInSignUpFormField(
            controller: email,
            label: 'E-mail ou Telefone',
            validatorFunction: (name) => name,
            obscure: false,
          ),
          SizedBox(
            height: paddingVertical * .03038922,
          ),
          SignInSignUpFormField(
            controller: password,
            label: 'Insira sua Senha',
            validatorFunction: (name) => name,
            obscure: true,
          ),
          SizedBox(
            height: paddingVertical * .03038922,
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => SignUpPage(),
              ),
            ),
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(6),
                minimumSize: MaterialStatePropertyAll(Size(
                    paddingHorizontal * .47395833,
                    paddingVertical * .05868263))),
            child: Text(
              'SignIn',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
