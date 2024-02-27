import 'package:coffee_shop/widgets/shortcuts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('World Delicius'),
          centerTitle: true,
          leading: const Icon(Icons.menu_rounded),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            SizedBox(height: 20),
            ShortcutsPage(),
          ],
        ));
  }
}
