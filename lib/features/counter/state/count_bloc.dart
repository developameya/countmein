import 'package:count_me_in/features/counter/state/count_event.dart';
import 'package:count_me_in/features/counter/state/count_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

///Updates the state for all the bloc builders
///listening to this bloc.
@singleton
class CountBloc extends Bloc<CountEvent, int> {
  ///Creates the bloc with initial state of [initialCount].
  ///
  CountBloc() : super(initialCount) {
    on<IncreaseCount>((event, emit) => emit(state + 1));
    on<DecreaseCount>(_onDecreaseCount);
  }

  ///Decreases the count by 1.
  ///
  ///If the count is zero, it is not decreased.
  ///
  void _onDecreaseCount(CountEvent event, Emitter<int> emit) {
    if (state != 0) {
      emit(state - 1);
    }
  }
}
