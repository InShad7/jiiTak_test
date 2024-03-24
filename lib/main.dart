import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/bottom_nav_bar/bottom_nav_bar.dart';

import 'bindings/bottom_nav_bar/bottom_nav_bar_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jiitak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialBinding: BottomNavBarBinding(),
      home: const BottomNavBar(),
    );
  }
}
