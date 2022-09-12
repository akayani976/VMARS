import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vmar/AppLayout/getx.dart';
import 'package:vmar/views/home_screen.dart';
import 'package:vmar/views/single_record_page.dart';

class RecordLogsPage extends StatelessWidget {
  const RecordLogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String logDate = DateFormat("M/dd/yy").format((DateTime.now()));
    String applyTime = DateFormat("HHmm").format((DateTime.now()));
    String removeTime = DateFormat("HHmm").format((DateTime.now()));
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
          color: const Color.fromARGB(255, 213, 218, 224),
          height: AppLayout.getHeight(630),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
                    color: Colors.white,
                    height: AppLayout.getHeight(45),
                    width: AppLayout.getWidth(43),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const HomePage());
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
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              GestureDetector(
                onTap: () {
                  Get.to(const SingleRecordPage());
                },
                child: Container(
                  padding: EdgeInsets.only(
                      left: AppLayout.getWidth(15),
                      right: AppLayout.getWidth(60)),
                  width: AppLayout.getWidth(350),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        logDate,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'VMARS Applied',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'VMARS Removed',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            applyTime,
                          ),
                          Text(removeTime)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
