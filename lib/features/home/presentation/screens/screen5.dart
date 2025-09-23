import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 5'),
      ),
      body: const Center(
        child: Text(
          'Screen 5 Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}