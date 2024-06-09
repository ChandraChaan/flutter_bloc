import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, increased: false));

  void increment() =>
      emit(CounterState(counterValue: state.counterValue + 1, increased: true));

  void decrement() => emit(
      CounterState(counterValue: state.counterValue - 1, increased: false));
}
