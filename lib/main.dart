import 'package:flutter/material.dart';
import 'package:instagram_app/themes/app_theme.dart';
import 'package:instagram_app/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen()
      },
      theme: AppTheme.swatch,
    );
  }
}
