import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'invisible_square.dart';

/// Scanner widget, using MobileScanner Package to scan QR Code.
class NFTScanner extends StatelessWidget {
  final Function(BarcodeCapture?) onDetect;

  const NFTScanner({
    Key? key,
    required this.onDetect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MobileScanner(onDetect: onDetect),
        AspectRatio(
            aspectRatio: 1.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: InvisibleSquare(
                size: MediaQuery.of(context).size.width - 64,
                borderRadius: 10,
                color: Colors.white,
                strokeWidth: 10,
              ),
            )),
      ],
    );
  }
}
