import 'package:flutter/material.dart';

import '../screens/verify_page.dart';
import 'signin_signup_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late final paddingHorizontal = MediaQuery.of(context).size.width;
  late final paddingVertical =
      MediaQuery.of(context).size.height + AppBar().preferredSize.height;

  late TextEditingController email, password, confirmPassword;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SignInSignUpFormField(
            label: "E-mail ou Telefone",
            controller: email,
            validatorFunction: (string) => string,
            obscure: false,
          ),
          SizedBox(height: paddingVertical * .016766467),
          SignInSignUpFormField(
            label: "Insira sua Senha",
            controller: password,
            validatorFunction: (string) => string,
            obscure: false,
          ),
          SizedBox(height: paddingVertical * .016766467),
          SignInSignUpFormField(
            label: "Confirme sua Senha",
            controller: confirmPassword,
            validatorFunction: (string) => string,
            obscure: false,
          ),
          SizedBox(height: paddingVertical * .039820359),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const VerifyPage(),
              ),
            ),
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(6),
              minimumSize: MaterialStatePropertyAll(
                Size(
                  paddingHorizontal * .47395833,
                  paddingVertical * .05868263,
                ),
              ),
            ),
            child: Text(
              'Cadastrar',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
