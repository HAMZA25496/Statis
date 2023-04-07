import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../CustomWidgets/custom_button.dart';

class ScanQRCodeScreen extends StatefulWidget {
  const ScanQRCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanQRCodeScreen> createState() => _ScanQRCodeScreenState();
}

class _ScanQRCodeScreenState extends State<ScanQRCodeScreen> {
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: FittedBox(
        child: SizedBox(
          height: size.height * 0.75,
          width: size.width,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFD5D5D5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                SizedBox(
                  height: 231,
                  width: 231,
                  child: MobileScanner(
                      allowDuplicates: true,
                      controller: cameraController,
                      onDetect: (barcode, args) {
                        if (barcode.rawValue != null) {
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //   backgroundColor: Colors.green,
                          //   content: Text(barcode.rawValue.toString()  ),
                          // ));

                          debugPrint('Barcode found! ');
                        } else {
                          debugPrint('Failed to scan Barcode');
                        }
                      }),
                ),



                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Scan a QR Code",),
                     ],
                   ),
                 ),

                   SizedBox(height: size.height * 0.2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      icon: ValueListenableBuilder(
                        valueListenable: cameraController.cameraFacingState,
                        builder: (context, state, child) {
                          switch (state) {
                            case CameraFacing.front:
                              return const Icon(Icons.camera_front);
                            case CameraFacing.back:
                              return const Icon(Icons.camera_rear);
                          }
                        },
                      ),
                      iconSize: 32.0,
                      onPressed: () => cameraController.switchCamera(),
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: ValueListenableBuilder(
                        valueListenable: cameraController.torchState,
                        builder: (context, state, child) {
                          switch (state) {
                            case TorchState.off:
                              return const Icon(Icons.flash_off, color: Colors.grey);
                            case TorchState.on:
                              return const Icon(Icons.flash_on, color: Colors.yellow);
                          }
                        },
                      ),
                      iconSize: 32.0,
                      onPressed: () => cameraController.toggleTorch(),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
