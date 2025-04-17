
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';

class homePopularItem extends StatelessWidget {

  final String imageUrl, title, Price;
  const homePopularItem({
    super.key, required this.imageUrl, required this.title, required this.Price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(height: 244,width: 200,
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(top: 10, left: 10, ),
        decoration: BoxDecoration(
          color: kWhiteGreyColor,
          borderRadius: BorderRadius.circular(20),),
          child:Column(
            children: [
             Container(
                width: 180,
                height: 160,
                decoration: BoxDecoration(
                  color: kWhiteGreyColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 140,
                  ),
                ),
              ),
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
        
              ),
              Row(
                children: [
                  Text(
                    "\$$Price",
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const Spacer(),
                  Align(
                   // alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                         // bottomLeft: Radius.circular(20),
                         bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/wish');
                        },
                        icon: Image.asset('assets/icon_wishlist.png', width: 24,color: Colors.white,),
                      ),
                    ),
                  ),
                ],
        
        
              )
              ],
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}

