import 'package:flutter/material.dart';

/// Helper function to get appropriate image directory based on screen width
String getImageDirectory(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

  if (width <= 320) return 'drawable-ldpi';
  if (width <= 480) return 'drawable-mdpi';
  if (width <= 720) return 'drawable-hdpi';
  if (width <= 1080) return 'drawable-xhdpi';
  if (width <= 1440) return 'drawable-xxhdpi';
  return 'drawable-xxxhdpi';
}
