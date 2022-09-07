import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 120,
        title: Center(
          child: Column(
            children: const [
              Text('PREVAIL TACTICAL'),
              Text(
                'VMARS',
                style: TextStyle(fontSize: 70),
              ),
              Text(
                'VITALS MONITORING AND RESTRAINT SYSTEM',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
