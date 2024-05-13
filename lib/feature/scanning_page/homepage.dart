// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_stt_scanner/const/data/more_than_one_year_data.dart';
import 'package:qr_code_stt_scanner/const/data/six_months_data.dart';
import 'package:qr_code_stt_scanner/const/data/three_months_data.dart';
import 'package:qr_code_stt_scanner/const/data/yearly_data.dart';
import 'package:qr_code_stt_scanner/feature/detail_page/detail_page.dart';
import 'package:qr_code_stt_scanner/model/firebase_response_model/qr_code_firebase_response.dart';
import 'package:qr_code_stt_scanner/model/static_qr_code_response_model/static_qr_code_response_model.dart';

class ScanningPage extends StatefulWidget {
  const ScanningPage({super.key});

  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  late final GlobalKey qrKey;
  Barcode? result;
  QRViewController? controller;
  @override
  void initState() {
    qrKey = GlobalKey(debugLabel: 'QR');

    super.initState();
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('datetime now : ${DateTime.now()}');

    return Scaffold(
      body: Center(
        child: Container(
          width: context.sized.dynamicWidth(.7),
          height: context.sized.dynamicHeight(.4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: QRView(
            overlay: QrScannerOverlayShape(
              borderColor: Colors.red,
            ),
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((Barcode scanData) {
      print("data : ${scanData.code}");
      final decodedData = scanData.code;
      if (decodedData != null) {
        final Map<String, dynamic> jsonMap = json.decode(decodedData);
        final model = StaticQrResponseModel.fromJson(jsonMap);
        final data = calculateMonths(model: model);

        if (data != null) {
          controller.dispose();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(data: data),
            ),
          );
        }
      }
    });
  }

  StaticDataParseModel? calculateMonths(
      {required StaticQrResponseModel model}) {
    switch (model.qrDate) {
      case 'three':
        return threeMonthsData;
      case 'six':
        return sixMonthsData;
      case 'yearly':
        return yearlyData;
      case 'moreThan':
        return moreThanOneYearData;
      default:
        return null;
    }
  }
}
