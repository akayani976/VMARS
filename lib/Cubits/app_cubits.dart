import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vmar/Cubits/cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(HomePageState());
  }
  void getSettings() {
    emit(SettingsState());
  }

  void getRecordsLog() {
    emit(RecordLogState());
  }
}
