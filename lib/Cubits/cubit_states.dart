import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class HomePageState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class SettingsState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class RecordLogState extends CubitStates {
  @override
  List<Object?> get props => [];
}
