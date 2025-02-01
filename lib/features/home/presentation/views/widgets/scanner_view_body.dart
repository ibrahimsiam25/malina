import 'package:flutter/material.dart';

import 'dart:io';

import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_style.dart';

class ScannerViewBody extends StatefulWidget {
  const ScannerViewBody({super.key});

  @override
  State<ScannerViewBody> createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerViewBody> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return
     
     Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: Colors.white,
              borderLength: 30,
              borderWidth: 5,
              cutOutSize: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Text("Поместите QR-код в рамку",
                textAlign: TextAlign.center, style: AppTextStyles.whiteS18W400),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.close, color: AppColors.ligtGray, size: 30),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      )
    ;
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
      if (result != null) {
        print("QR Code: ${result!.code}");
        Navigator.pop(context, result!.code);
      }
    });
  }

  @override
  void dispose() {
    controller?.disposed;
    super.dispose();
  }
}
