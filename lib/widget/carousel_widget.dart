
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:provider/provider.dart';

class carouselWidget extends StatelessWidget {
  final String title, subtitle, imageUrl;
  const carouselWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
     final theneProvider = Provider.of<Themeprovider>(context);
     final isDarkMode = theneProvider.isDarkMode;
    
    return Container(
      height: 124,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                
                height: 210,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style:Theme.of(context).textTheme.displaySmall
                          ),
                          SizedBox(height: 4),
                          Text(
                            subtitle,
                            style: Theme.of(context).textTheme.bodyLarge
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,top: 10),
            child: Image.asset(imageUrl, height: 120),
          ),
        ],
      ),
    );
  }
}
