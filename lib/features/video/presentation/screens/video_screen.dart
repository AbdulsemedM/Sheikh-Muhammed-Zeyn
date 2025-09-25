import 'package:flutter/material.dart';

import '../widgets/video_content.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VideoContent(),
    );
  }
}
