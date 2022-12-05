import 'dart:async';

import 'package:flutter/material.dart';
import 'package:structure/config/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    afterDelay(seconds: 3);
  }

  void afterDelay({required int seconds}) {
    _timer = Timer(
      Duration(seconds: seconds),
      () => Navigator.pushNamed(context, AppRouter.HOME),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
