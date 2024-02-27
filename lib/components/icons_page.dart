import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  const IconsPage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
        width: 24,
      ),
    );
  }
}
