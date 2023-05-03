import 'package:flutter/material.dart';
import 'package:shoes_market/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Home Page'),
      ),
      body: ListView(
        children: [
          customText('Hello World!'),
        ],
      ),
    );
  }
}
