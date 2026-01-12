import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // increment
  void increment() {
    emit(state + 1);
  }

  // decrement
  void decrement() {
    emit(state - 1);
  }

  // reset
  void reset() {
    emit(0);
  }
}
