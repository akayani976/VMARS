import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:vmar/AppLayout/button.dart';
import 'package:vmar/AppLayout/getx.dart';
import 'package:vmar/views/home_screen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        toolbarHeight: AppLayout.getHeight(120),
        title: Center(
          child: Column(
            children: [
              Text(
                'PREVAIL TACTICAL',
                style: TextStyle(fontSize: AppLayout.getHeight(20)),
              ),
              Text(
                'VMARS',
                style: TextStyle(fontSize: AppLayout.getHeight(70)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 213, 218, 224),
          height: AppLayout.getHeight(630),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                    height: AppLayout.getHeight(70),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const HomePage());
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 150, 155, 162),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(300),
                    height: AppLayout.getHeight(70),
                    child: const Center(
                        child: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 28,
                          color: Color.fromARGB(255, 150, 155, 162)),
                    )),
                  )
                ],
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(40)),
                child: Column(
                  children: [
                    Gap(AppLayout.getHeight(20)),
                    const AppButton(text: 'Pair Bluetooth'),
                    Gap(AppLayout.getHeight(15)),
                    const AppButton(text: 'Audio'),
                    Gap(AppLayout.getHeight(15)),
                    const AppButton(text: 'Alerts'),
                    Gap(AppLayout.getHeight(15)),
                    const AppButton(text: 'Training Mode'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
