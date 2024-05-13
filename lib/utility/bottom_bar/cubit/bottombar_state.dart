part of 'bottombar_cubit.dart';

class BottombarState extends Equatable {
  const BottombarState({required this.selectedIndex});

  final int selectedIndex;

  @override
  List<Object> get props => [
        selectedIndex,
      ];

  BottombarState copyWith({
    required int selectedIndex,
  }) {
    return BottombarState(
      selectedIndex: selectedIndex,
    );
  }
}
