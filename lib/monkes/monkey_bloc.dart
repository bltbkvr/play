import 'package:flutter_bloc/flutter_bloc.dart';

class MonkeyCubit extends Cubit<int> {
  MonkeyCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

class MonkeyCubitString extends Cubit<String> {
  MonkeyCubitString() : super("");

  void increment() => emit(state + "1");
}
