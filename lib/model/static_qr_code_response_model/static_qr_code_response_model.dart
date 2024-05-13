import 'package:equatable/equatable.dart';

class StaticQrResponseModel with EquatableMixin {
  String? qrDate;

  StaticQrResponseModel({
    this.qrDate,
  });

  @override
  List<Object?> get props => [qrDate];

  StaticQrResponseModel copyWith({
    String? data,
  }) {
    return StaticQrResponseModel(
      qrDate: data ?? qrDate,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': qrDate,
    };
  }

  factory StaticQrResponseModel.fromJson(Map<String, dynamic> json) {
    return StaticQrResponseModel(
      qrDate: json['data'] as String?,
    );
  }
}
