import 'package:first_company_project/CustomWidgets/custom_textfield.dart';
import 'package:first_company_project/Screens/navigation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isChecked = false;
  bool passwordVisibile = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF009773),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.25,
                  ),
                  AuthTextField("Email", "Email", false, emailController,null),
                  SizedBox(
                    height: 5,
                  ),
                  AuthTextField("Password", "Password", true, passController, passwordVisibile? Icons.visibility: Icons.visibility_off),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Color(0xFF009773)),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  SizedBox(
                    width: 278,
                    height: 50,
                    child: CupertinoButton(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      color: Color(0xFF009773),
                      onPressed: ()  {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigation()));
                      },
                      child: Text("Continue",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Please sign up first!"),
                      InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                          },
                          child: Text(
                            " SIGN UP",
                            style: TextStyle(
                                color: Color(
                                  0xFF009773,
                                ),
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    ),
        ));
  }
}
