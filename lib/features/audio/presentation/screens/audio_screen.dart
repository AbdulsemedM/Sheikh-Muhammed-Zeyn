import 'package:flutter/material.dart';

import '../widgets/audio_content.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AudioContent(),
    );
  }
}
