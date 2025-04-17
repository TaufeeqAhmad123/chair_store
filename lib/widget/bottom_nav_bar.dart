
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/pages/home/home.dart';
import 'package:flutter_application_1/pages/profile/profile.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   final List  <Widget> _pages = [
     HomeScreen(),
      const Center(child: Text('Search')),
      ProfileScreen(),
    ];
    int _selectedIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Themeprovider>(context);
    final isDarkMode = themeProvider.isDarkMode;
   
    return  Scaffold(
      body: _pages[_selectedIndex],
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor:  Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          type: BottomNavigationBarType.fixed,
         selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: _selectedIndex==0 ? kBlueColor : kBlackAccentColor,
          ),
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
             
            });
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
                color: _selectedIndex==0 ? kBlueColor :  Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_wishlist.png', width: 24,
                color: _selectedIndex==1 ? kBlueColor :  Colors.black,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_profile.png', width: 24,
               color: _selectedIndex==2 ? kBlueColor : Colors.black,
              
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}