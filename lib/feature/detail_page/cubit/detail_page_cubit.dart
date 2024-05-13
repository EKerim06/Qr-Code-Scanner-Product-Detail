// ignore_for_file: unused_local_variable

import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_stt_scanner/const/enums/product_color.dart';
import 'package:qr_code_stt_scanner/model/firebase_response_model/qr_code_firebase_response.dart';

part 'detail_page_state.dart';

class DetailPageCubit extends Cubit<DetailPageState> {
  DetailPageCubit() : super(const DetailPageState());

  void timeTicker(DateTime sttTime) {
    late Timer timer;

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        DateTime now = DateTime.now();
        Duration difference = sttTime.difference(now);

        if (difference.inSeconds <= 0) {
          // Süre dolmuşsa timer'ı durdur
          timer.cancel();
        } else {
          int years = difference.inDays ~/ 365;
          int months = (difference.inDays % 365) ~/ 30;
          int days = difference.inDays % 30;
          int hours = difference.inHours % 24;
          int minutes = difference.inMinutes % 60;
          int seconds = difference.inSeconds % 60;

          emit(
            state.copyWith(
              dateTime: DateTime(
                years,
                months,
                days,
                hours,
                minutes,
                seconds,
              ),
            ),
          );
        }
        if (difference.inDays > 0 && difference.inDays <= 30) {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Red.getColor(),
              selectedIndex: 0,
            ),
          ); // Süre dolmuşsa mor döndür
        } else if (difference.inDays > 30 && difference.inDays <= 90) {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Orange.getColor(),
              selectedIndex: 1,
            ),
          ); // Üç aydan azsa turuncu döndür
        } else if (difference.inDays > 90 && difference.inDays <= 180) {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Yellow.getColor(),
              selectedIndex: 2,
            ),
          ); // Altı aydan azsa sarı döndür
        } else if (difference.inDays > 180 && difference.inDays <= 365) {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Green.getColor(),
              selectedIndex: 3,
            ),
          ); // On iki aydan azsa kırmızı döndür
        } else if (difference.inDays > 365) {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Purple.getColor(),
              selectedIndex: 4,
            ),
          ); // On iki aydan fazlaysa mor döndür
        } else {
          emit(
            state.copyWith(
              selectedColor: ProductColor.Black.getColor(),
              selectedIndex: 5,
            ),
          );
        }
      },
    );
  }
}
