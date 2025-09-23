import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:sheikh_muhammed_zeyn/features/book/presentation/screens/book_screen.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/home_screen.dart';
import 'package:sheikh_muhammed_zeyn/features/sheikh_intro/presentation/screens/sheikh_intro_screen.dart';

// Import app theme
import 'common/theme/theme.dart';

// Import features
// import 'features/home/presentation/home_screen.dart';
// import 'features/auth/presentation/login_screen.dart';
// import 'features/profile/presentation/profile_screen.dart';
import 'features/app_intro/app_intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Using MaterialApp.router directly since we don't have providers yet
    return MaterialApp.router(
      title: 'Sheikh Muhammed Zeyn',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

// Router configuration
final _router = GoRouter(
  initialLocation: '/intro',
  routes: [
    GoRoute(
      path: '/intro',
      builder: (context, state) => const BookScreen(),
    ),
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const HomeScreen(),
    // ),
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) => const LoginScreen(),
    // ),
    // GoRoute(
    //   path: '/profile',
    //   builder: (context, state) => const ProfileScreen(),
    // ),
  ],
);
