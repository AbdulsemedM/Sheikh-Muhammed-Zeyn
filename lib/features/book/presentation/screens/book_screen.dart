import 'package:flutter/material.dart';

import '../widgets/book_content.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookContent(),
    );
  }
}
