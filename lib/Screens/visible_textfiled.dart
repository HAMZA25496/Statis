// import 'package:flutter/material.dart';
//
// class AuthVisibleTextfiled extends StatelessWidget {
//   const AuthVisibleTextfiled({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: passController,
//       obscureText: passwordVisibile ? false : true,
//       decoration: InputDecoration(
//           hintText: "Password",
//
//           suffixIcon: InkWell(
//               onTap: () {
//                 setState(() {
//                   passwordVisibile = !passwordVisibile;
//                 });
//                 print(passwordVisibile);
//               },
//
//               child: passwordVisibile == true ? Icon(
//                 Icons.visibility_outlined, color: Color(0xFFA8A8A8),) : Icon(
//                 Icons.visibility_off_outlined, color: Color(0xFFA8A8A8),))
//
//       ),
//     )
//     ,
//
//   }
// }
