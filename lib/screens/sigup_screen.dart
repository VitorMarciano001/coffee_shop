import 'package:flutter/material.dart';

import '../models/app_route.dart';
import '../utils/screen_size_manager.dart';
import '../components/signup_form.dart';
import '../components/signin_signup_option_buttons.dart';
import '../theme/colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenDimentions = MediaQuery.of(context).size;
    final screenCalculator = ScreenSizeManager(
      sizeWidth: screenDimentions.width,
      sizeHeight: screenDimentions.height,
    );
    return Material(
      child: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: screenCalculator.calculateDistance(.31437126, 'height'),
            child: Image.asset('assets/images/coffee_signup.png',
                fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: screenCalculator.calculateDistance(.68113772, 'height'),
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
                  SizedBox(
                      height: screenCalculator.calculateDistance(
                          .016766467, 'height')),
                  SizedBox(
                    height:
                        screenCalculator.calculateDistance(.060778443, 'heght'),
                    width:
                        screenCalculator.calculateDistance(.461805556, 'heght'),
                    child: Text(
                        'Insira seu e-mail e senha '
                        'para se registrar no nosso App.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  SizedBox(
                      height: screenCalculator.calculateDistance(
                          .03038922, 'heght')),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenCalculator.calculateDistance(
                          .036458333, 'heght'),
                    ),
                    child: SignUpForm(
                      showOrNot: true,
                      fn: () => Navigator.of(context)
                          .pushReplacementNamed(AppRoute.verify),
                    ),
                  ),
                  SizedBox(
                    height:
                        screenCalculator.calculateDistance(.016766467, 'heght'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ja possui uma conta?',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  SizedBox(
                    height:
                        screenCalculator.calculateDistance(.03038922, 'heght'),
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
