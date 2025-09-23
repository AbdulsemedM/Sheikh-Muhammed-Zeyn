import 'package:flutter/material.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeContent(),
    );
  }
}
