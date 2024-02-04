import 'package:flutter/material.dart';

class SignInSignUpFormField extends StatelessWidget {
  final bool obscure;
  final String label;
  final TextEditingController controller;
  final String? Function(String?) validatorFunction;

  const SignInSignUpFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.validatorFunction,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).colorScheme.tertiary,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          // enabled
          borderSide: BorderSide(
              width: 2, color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          // focused
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(label, style: Theme.of(context).textTheme.labelLarge),
      ),
      validator: validatorFunction,
      controller: controller,
      obscureText: obscure,
    );
  }
}
