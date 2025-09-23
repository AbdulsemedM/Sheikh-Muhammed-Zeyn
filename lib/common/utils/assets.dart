/// Centralized asset references for the application.
/// 
/// This class provides static constants for all assets used in the app,
/// making it easier to maintain and update asset paths.
class AppAssets {
  // Images
  static const String _imagesPath = 'assets/images/';
  static const String logo = '${_imagesPath}logo.png';
  static const String background = '${_imagesPath}background.png';
  static const String profilePlaceholder = '${_imagesPath}profile_placeholder.png';
  
  // Icons
  static const String _iconsPath = 'assets/icons/';
  static const String homeIcon = '${_iconsPath}home.svg';
  static const String profileIcon = '${_iconsPath}profile.svg';
  static const String settingsIcon = '${_iconsPath}settings.svg';
  static const String notificationIcon = '${_iconsPath}notification.svg';
  
  // Animations
  static const String _lottiePath = 'assets/lottie/';
  static const String loadingAnimation = '${_lottiePath}loading.json';
  static const String successAnimation = '${_lottiePath}success.json';
  
  // Fonts
  static const String _fontsPath = 'assets/fonts/';
  // Font paths can be added here if needed for direct font loading
}