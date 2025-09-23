import 'package:flutter/material.dart';
import '../widgets/app_intro_content.dart';

class AppIntroScreen extends StatelessWidget {
  const AppIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppIntroContent(),
    );
  }
}
