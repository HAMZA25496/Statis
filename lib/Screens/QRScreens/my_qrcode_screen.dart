import 'package:first_company_project/CustomWidgets/custom_button.dart';
import 'package:first_company_project/Screens/QRScreens/scan_qrcode_screen.dart';
import 'package:flutter/material.dart';
class MyQRCodeSCreen extends StatefulWidget {
  const MyQRCodeSCreen({Key? key}) : super(key: key);

  @override
  State<MyQRCodeSCreen> createState() => _MyQRCodeSCreenState();
}

class _MyQRCodeSCreenState extends State<MyQRCodeSCreen> {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    final isDarkTheme = currentTheme.brightness == Brightness.dark;
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: SizedBox(
        height: size.height * 0.75,
        width: size.width,
        child: Container(

          decoration: BoxDecoration(
            color: Color(0xFFD5D5D5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))

          ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 193,
                width: 193,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/QR.png")
                  )
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ScanQRCodeScreen()));
                },
                child: CustomButton(
                  title: "Scan",
                  fontSize: 20,
                  borderRadius: 35.0,
                  width: 240,
                  height: 37,
                  bColor: Color(0xFF009773),
                  textColor: Colors.white,

                ),
              ),

          ],
        ),
        ),
      ),
    );
  }
}
