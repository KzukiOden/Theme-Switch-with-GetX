import 'package:change_theme_with_switch/controller/themechanger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Themechanger themechanger = Get.put(Themechanger());
  bool switchBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'GetX Theme Changer',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(child: Text('Theme Changer')),

          Obx(
            () => Switch(
              activeColor: Colors.blue,
              value: themechanger.darkMode.value,
              onChanged: (value) {
                themechanger.setThemeMode(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
