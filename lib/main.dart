
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/pages/home/detail_screen.dart';
import 'package:flutter_application_1/pages/home/home.dart';
import 'package:flutter_application_1/pages/profile/profile.dart';
import 'package:flutter_application_1/widget/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Themeprovider(),
      child: const MyApp(),
    ),
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theneProvider = Provider.of<Themeprovider>(context);
  
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chair store',
        theme: theneProvider.currentTheme,
        routes: {
          '/': (context) => const BottomNavBar(),
          '/home': (context) => const HomeScreen(),
          '/wish': (context) => const HomeScreen(),
          '/profile': (context) =>  ProfileScreen(),
          '/detail': (context) => const DetailScreen(),
          // Add other routes here
        },
      );
        
      
  }
}
