import 'package:coffee_shop/utils/app_route.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../components/email_autenticator_field.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width;
    final paddingVertical =
        MediaQuery.of(context).size.height + AppBar().preferredSize.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: paddingVertical * .090778443),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: paddingHorizontal * .036458333,
              ),
              width: double.maxFinite,
              child: Image.asset(
                alignment: Alignment.center,
                'assets/images/code_verify.png',
                fit: BoxFit.cover,
                width: paddingHorizontal * .729166667,
              ),
            ),
            SizedBox(height: paddingVertical * .057634731),
            Text(
              'Um codigo de validacao foi enviado '
              'paraseu e-mail, confirme o abaixo.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: paddingVertical * .015718563),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: paddingHorizontal * .048611111,
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  Text(
                    'Enviar código novamente em: ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '59 ',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: success.shade500),
                  ),
                  Text(
                    'Segundos',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            SizedBox(height: paddingVertical * .055538922),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: paddingHorizontal * .036458333),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EmailAutenticatorField(),
                  EmailAutenticatorField(),
                  EmailAutenticatorField(),
                  EmailAutenticatorField(),
                ],
              ),
            ),
            SizedBox(height: paddingVertical * .055538922),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).popAndPushNamed(AppRoute.home),
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
                'Confirmar',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(height: paddingVertical * .055538922),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Voltar',
                  style: Theme.of(context).textTheme.titleMedium,
                ))
          ],
        ),
      ),
    );
  }
}
