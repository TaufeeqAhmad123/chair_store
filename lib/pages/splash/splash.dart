
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/splash.jpg',
                    
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}