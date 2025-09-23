import 'package:flutter/material.dart';
import '../widgets/sheikh_intro_content.dart';

class SheikhIntroScreen extends StatelessWidget {
  const SheikhIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SheikhIntroContent(),
    );
  }
}
