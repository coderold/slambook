import 'package:advmobprog_midterms_tp02_molina/theme/app_theme.dart';
import 'package:advmobprog_midterms_tp02_molina/widgets/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SlamBookApp());
}

class SlamBookApp extends StatelessWidget {
  const SlamBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomePage(),
    );
  }
}
