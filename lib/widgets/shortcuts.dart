import '../components/icons_page.dart';
import 'package:flutter/material.dart';

class ShortcutsPage extends StatelessWidget {
  const ShortcutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconsPage(image: 'assets/images/coffee.png'),
        IconsPage(image: 'assets/images/croissant.png'),
        IconsPage(image: 'assets/images/cup_cake.png'),
        IconsPage(image: 'assets/images/cup_of_coffee.png'),
        IconsPage(image: 'assets/images/iced_coffee.png'),
      ],
    );
  }
}
