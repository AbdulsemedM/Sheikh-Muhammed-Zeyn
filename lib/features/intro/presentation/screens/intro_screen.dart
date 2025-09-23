import 'package:flutter/material.dart';
import '../widgets/intro_content.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroContent(),
    );
  }
}
