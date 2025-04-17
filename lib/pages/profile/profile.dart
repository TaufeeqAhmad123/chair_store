import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  bool isLightMode = true;

  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    final theneProvider = Provider.of<Themeprovider>(context);
     final isDarkMode = theneProvider.isDarkMode;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: opacity,
      child: Scaffold(
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
            
        body: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_background.png',
              color: isLightMode ? null : const Color(0xffD8D8D8),
            ),
            SizedBox(height: 130),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Image.asset('assets/man.png'),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Theresa Webb',
                            style:Theme.of(context).textTheme.displayLarge
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () async {
                          // setState(() {
                          //   isLightMode = !isLightMode;
                          //   opacity = 0;
                          // });
                          // Timer(const Duration(milliseconds: 500), () {
                          //   setState(() {
                          //     opacity = 1;
                          //   });
                          // });
                          theneProvider.toggleTheme();
                          //theneProvider.resetopacity();
                        },
                        child: Container(
                          height: 44,
                          width: 88,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color:
                                Theme.of(context).cardColor,
                          ),
                          child: AnimatedAlign(
                            alignment:
                                isDarkMode
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset(
                              isDarkMode
                                  ? 'assets/icon_switch_light.png'
                                  : 'assets/icon_switch_dark.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Column(
                    children: [
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'profile',
                        leading: 'assets/icon_profile.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'My Profile',
                        leading: 'assets/icon_address.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'My order',
                        leading: 'assets/icon_order.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'Payment Method',
                        leading: 'assets/icon_payment.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'My Wishlist',
                        leading: 'assets/icon_wishlist.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'Frequently Asked Questions',
                        leading: 'assets/icon_faq.png',
                      ),
                      profileMenuWidget(
                        isLightMode: isLightMode,
                        title: 'Costumer care',
                        leading: 'assets/icon_cs.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class profileMenuWidget extends StatelessWidget {
  final String title;
  final String leading;
  const profileMenuWidget({
    super.key,
    required this.isLightMode,
    required this.title,
    required this.leading,
  });

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            leading,
            width: 24,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
  }
}
