import 'package:first_company_project/CustomWidgets/custom_button.dart';
import 'package:first_company_project/Screens/QRScreens/my_qrcode_screen.dart';
import 'package:first_company_project/Screens/QRScreens/scan_qrcode_screen.dart';
import 'package:first_company_project/Screens/search_screen.dart';
import 'package:flutter/material.dart';

enum QR {
  myQRCode,
  scanCode,
}

class ContributeQRCodeScreen extends StatefulWidget {
  const ContributeQRCodeScreen({Key? key}) : super(key: key);

  @override
  State<ContributeQRCodeScreen> createState() => _ContributeQRCodeScreenState();
}

class _ContributeQRCodeScreenState extends State<ContributeQRCodeScreen> {
  QR? selectedQR;

  @override
  void initState() {
    // TODO: implement initState
    selectedQR = QR.myQRCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    final isDarkTheme = currentTheme.brightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Scan QR Code",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedQR = (QR.myQRCode);
                        print(selectedQR);
                      });
                    },
                    child: CustomButton(
                      title: "My QR Code",
                      fontSize: 12,
                      borderRadius: 4.0,
                      width: 84,
                      height: 32,
                      bColor: selectedQR == QR.myQRCode
                          ? Color(0xFF009773)
                          : Colors.white ,
                      textColor:
                          selectedQR == QR.myQRCode ? Colors.white : Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedQR = (QR.scanCode);
                      });
                    },
                    child: CustomButton(
                      title: "Scan Code",
                      fontSize: 14,
                      borderRadius: 4.0,
                      width: 84,
                      height: 32,
                      bColor: selectedQR == QR.scanCode
                          ? Color(0xFF009773)
                          : Colors.white,
                      textColor:
                          selectedQR == QR.scanCode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),

            ),
                selectedQR == QR.myQRCode ? Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.0),
                  child: MyQRCodeSCreen(),
                ) : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ScanQRCodeScreen(),
                )
          ],
        ),
      ),
    );
  }
}
