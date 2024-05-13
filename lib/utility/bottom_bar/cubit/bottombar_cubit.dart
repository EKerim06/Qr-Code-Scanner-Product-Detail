import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottombar_state.dart';

class BottombarCubit extends Cubit<BottombarState> {
  BottombarCubit() : super(const BottombarState(selectedIndex: 0));

  void selectedIndex(int value) {
    emit(state.copyWith(selectedIndex: value));
  }
}
