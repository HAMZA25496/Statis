import 'package:first_company_project/Screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'QRScreens/contribute_ qrcode_screen.dart';
import 'home_screen.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int  _currentIndex = 0;
  final screens = [
    HomeScreen(),
    SearchScreen(),
    ContributeQRCodeScreen(),
    Container(),
    Container(),

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: screens[_currentIndex],

      bottomNavigationBar: SizedBox(
        height: size.height * 0.08,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0),topRight:  Radius.circular(20.0)),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,

            backgroundColor: const Color(0xFF000000),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF00D1FF),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
            unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),


            items: const [
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Home',),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Contribute'),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Browse'),  BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Account'),


            ],
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });

            },
          ),
        ),
      ),
    );
  }
}
