import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomePage(),
    ),
  );
}
