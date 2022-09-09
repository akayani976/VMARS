import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vmar/Cubits/cubit_states.dart';
import 'package:vmar/views/home_screen.dart';
import 'package:vmar/views/record_logs.dart';
import 'package:vmar/views/settings_screen.dart';

import 'app_cubits.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is HomePageState) {
          return const HomePage();
        } else if (state is SettingsState) {
          return const SettingsPage();
        } else {
          return const RecordLogsPage();
        }
      }),
    );
  }
}
