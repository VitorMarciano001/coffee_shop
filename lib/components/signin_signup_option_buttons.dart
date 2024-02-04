import 'package:flutter/material.dart';

class SignInSignUpOptionButtons extends StatelessWidget {
  const SignInSignUpOptionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final paddingHorizontal = MediaQuery.of(context).size.width * .1421875;
    late final paddingVertical =
        (MediaQuery.of(context).size.height + AppBar().preferredSize.height) *
            .07125749;
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.secondary),
              fixedSize: MaterialStatePropertyAll(
                Size(
                  paddingHorizontal,
                  paddingVertical,
                ),
              ),
            ),
            onPressed: () {},
            child: Image.asset('assets/images/Apple.png'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .1421875,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.secondary),
              fixedSize: MaterialStatePropertyAll(
                Size(
                  paddingHorizontal,
                  paddingVertical,
                ),
              ),
            ),
            onPressed: () {},
            child: Image.asset('assets/images/Google.png'),
          ),
        ],
      ),
    );
  }
}
