import 'package:flutter/material.dart';

import '../theme/colors.dart';

class EmailAutenticatorField extends StatelessWidget {
  const EmailAutenticatorField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width;
    final paddingVertical =
        MediaQuery.of(context).size.height + AppBar().preferredSize.height;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical * .010479042,
        horizontal: paddingHorizontal * .010479042,
      ),
      width: paddingHorizontal * .182291667,
      height: paddingVertical * .078592814,
      decoration: BoxDecoration(
        border: const Border(),
        color: neutral.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          counterText: '',
        ),
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(color: secondary.shade500, fontSize: 32),
        cursorColor: Theme.of(context).colorScheme.secondary,
        cursorHeight: 32,
      ),
    );
  }
}
