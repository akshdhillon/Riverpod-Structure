import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:structure/config/router.dart';
import 'package:structure/screens/home/ui/home.dart';
import 'package:structure/screens/splash/splash.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: AppRouter.navigatorKey,
      initialRoute: AppRouter.SPLASH,
      routes: {
        AppRouter.HOME: (context) => const HomeScreen(title: 'title'),
        AppRouter.SPLASH: (context) => const SplashScreen(),
      },
    );
  }
}
