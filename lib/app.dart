import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/utils/theme/theme.dart';
import 'package:urbanoasis/featruers/authentication/screens/onboarding/onboarding.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OAppTheme.lightTheme,
      darkTheme: OAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}