import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/const/app_themes.dart';
import 'app/routes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokedex',
      theme: AppThemes.defaultTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    );
  }
}
