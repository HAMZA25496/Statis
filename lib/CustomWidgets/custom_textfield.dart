import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  String? labelText;
  String? hintText;
  bool? securePassword;
  IconData? icon;
  TextEditingController? controller;


  AuthTextField(
      this.labelText, this.hintText, this.securePassword, this.controller,this.icon,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
      child: Column(
        children: [
          Card(
            elevation: 1,
            color: Color(0xFFE4E3E3),
            // shadowColor: Colors.blue,
            // shadowColor: Colors.lightBlue[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: TextFormField(
              controller: controller,
              obscureText: securePassword!,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 20.0,
                ),
                suffixIcon:Icon( icon,color: Color(0xFFA8A8A8),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
