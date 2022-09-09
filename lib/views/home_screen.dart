import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:vmar/AppLayout/button.dart';
import 'package:vmar/AppLayout/getX.dart';
import 'package:vmar/Cubits/app_cubits.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(minutes: 5);
    String snoozeTime =
        DateFormat("hh:mm a").format((DateTime.now().add(duration)));

    int percent = 59;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: AppLayout.getHeight(130),
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
              Text(
                'VITALS MONITORING AND RESTRAINT SYSTEM',
                style: TextStyle(fontSize: AppLayout.getHeight(10)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: AppLayout.getHeight(360),
            color: Colors.white,
            padding: EdgeInsets.only(
                top: AppLayout.getHeight(35),
                left: AppLayout.getWidth(15),
                right: AppLayout.getWidth(15)),
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(10)),
                          child: CircularPercentIndicator(
                            radius: AppLayout.getHeight(100),
                            lineWidth: AppLayout.getHeight(12),
                            animation: true,
                            percent: percent / 100,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'BATTERY',
                                  style: TextStyle(
                                    fontSize: AppLayout.getHeight(16),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '$percent%',
                                  style: TextStyle(
                                    fontSize: AppLayout.getHeight(50),
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.grey,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor:
                                const Color.fromARGB(255, 128, 242, 88),
                          )),
                      Gap(AppLayout.getHeight(28)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(5)),
                        height: AppLayout.getHeight(65),
                        width: AppLayout.getWidth(350),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bluetooth,
                              color: Colors.white,
                              size: AppLayout.getHeight(45),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Paired with',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  "Aprils's VMARS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: AppLayout.getHeight(262),
            width: AppLayout.getWidth(390),
            color: const Color.fromARGB(255, 213, 218, 224),
            child: Center(
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(20)),
                  GestureDetector(
                    onTap: isTapped == true
                        ? null
                        : () {
                            setState(() {
                              isTapped = !isTapped;
                              Timer(
                                duration,
                                () {
                                  setState(() {
                                    isTapped = !isTapped;
                                  });
                                },
                              );
                            });
                          },
                    child: AppButton(
                      text: isTapped == false
                          ? 'Snooze 5 Minutes'
                          : 'Snoozed until $snoozeTime',
                      color: isTapped == false
                          ? Colors.white
                          : const Color.fromARGB(255, 240, 159, 0),
                      textColor:
                          isTapped == false ? Colors.black54 : Colors.white,
                    ),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppCubits>(context).getRecordsLog();
                    },
                    child: const AppButton(text: 'Record Log'),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppCubits>(context).getSettings();
                    },
                    child: const AppButton(text: 'Settings'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
