import 'package:flutter/material.dart';

/// App color palette
/// 
/// This class defines all colors used throughout the application.
/// Using a centralized color system ensures consistency across the app.
class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF3F51B5);  // Indigo
  static const Color primaryLight = Color(0xFF757DE8);
  static const Color primaryDark = Color(0xFF002984);
  
  // Secondary colors
  static const Color secondary = Color(0xFFFF4081);  // Pink
  static const Color secondaryLight = Color(0xFFFF79B0);
  static const Color secondaryDark = Color(0xFFC60055);
  
  // Neutral colors
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFB00020);
  
  // Text colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFFBDBDBD);
  
  // Other common colors
  static const Color success = Color(0xFF4CAF50);
  static const Color info = Color(0xFF2196F3);
  static const Color warning = Color(0xFFFFC107);
  static const Color divider = Color(0xFFE0E0E0);
}