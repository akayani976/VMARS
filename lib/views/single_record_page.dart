import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vmar/views/record_logs.dart';
import '../AppLayout/getx.dart';
import 'package:dotted_line/dotted_line.dart';

class SingleRecordPage extends StatelessWidget {
  const SingleRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    String logDate = DateFormat("M/dd/yy").format((DateTime.now()));
    String applyTime = DateFormat("HHmm").format((DateTime.now()));
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          elevation: 0,
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
            color: Colors.white,
            height: AppLayout.getHeight(630),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
                    color: Colors.white,
                    height: AppLayout.getHeight(45),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const RecordLogsPage());
                      },
                      child: const Icon(
                        Icons.chevron_left_sharp,
                        color: Color.fromARGB(255, 150, 155, 162),
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: AppLayout.getWidth(38)),
                    color: Colors.white,
                    width: AppLayout.getWidth(348),
                    height: AppLayout.getHeight(45),
                    child: const Center(
                        child: Text(
                      'Record Log',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 150, 155, 162)),
                    )),
                  ),
                ]),
                const Divider(
                  color: Colors.black,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        logDate,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Divider(
                        color: Colors.black,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text(
                        'VMARS APPLIED',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 150, 151, 155)),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      const DottedLine(),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        children: [
                          Text(
                            applyTime,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 150, 151, 155)),
                          ),
                          Gap(AppLayout.getWidth(40)),
                          Column(
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 18,
                              ),
                              Text(
                                'B',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.lightBlue),
                              )
                            ],
                          ),
                          Gap(AppLayout.getWidth(10)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                '60',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.lightBlue),
                              )
                            ],
                          ),
                          Gap(AppLayout.getWidth(90)),
                          const Text(
                            '1 Minute Baseline',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(10)),
                      const DottedLine(),
                      Gap(AppLayout.getHeight(15)),
                      const Text(
                        'VMARS REMOVED',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 150, 151, 155)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
