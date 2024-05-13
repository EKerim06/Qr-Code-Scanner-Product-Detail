// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'detail_page_cubit.dart';

class DetailPageState extends Equatable {
  const DetailPageState(
      {this.selectedColor,
      this.selectedIndex,
      this.dateTime,
      this.qrCodeFirebaseResponse});

  final DateTime? dateTime;
  final Color? selectedColor;
  final int? selectedIndex;
  final StaticDataParseModel? qrCodeFirebaseResponse;

  @override
  List<Object?> get props => [
        dateTime,
        selectedColor,
        selectedIndex,
        qrCodeFirebaseResponse,
      ];

  DetailPageState copyWith({
    DateTime? dateTime,
    Color? selectedColor,
    int? selectedIndex,
    StaticDataParseModel? qrCodeFirebaseResponse,
  }) {
    return DetailPageState(
      dateTime: dateTime ?? this.dateTime,
      selectedColor: selectedColor ?? this.selectedColor,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      qrCodeFirebaseResponse:
          qrCodeFirebaseResponse ?? this.qrCodeFirebaseResponse,
    );
  }
}
