
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:flutter_application_1/widget/carousel_widget.dart';
import 'package:flutter_application_1/widget/popular_item_widget.dart';
import 'package:flutter_application_1/widget/row_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
     final theneProvider = Provider.of<Themeprovider>(context);
     final isDarkMode = theneProvider.isDarkMode;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(  isDarkMode ?'assets/logo_light.png' :'assets/logo_dark.png' , width: 53),
                    const SizedBox(width: 8),
                    Text(
                      'Space',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold)
                    ),
                    const Spacer(),
                    Image.asset('assets/icon_cart.png', width: 30),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: kGreyColor),
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      'search Furniture',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const Spacer(),
                    Image.asset('assets/icon_search.png', width: 24),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              rowWidget(title: 'Category', sub: 'Show all',),
              const SizedBox(height: 20),
              CarouselSlider(
                items: [
                  carouselWidget(
                    title: 'Chair',
                    subtitle: 'Best Chair for you',
                    imageUrl: 'assets/image_product_category1.png',
                  ),
                  carouselWidget(
                    title: 'Chair',
                    subtitle: 'Best Chair for you',
                    imageUrl: 'assets/image_product_category2.png',
                  ),
                  carouselWidget(
                    title: 'Chair',
                    subtitle: 'Best Chair for you',
                    imageUrl: 'assets/image_product_category3.png',
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 700),
                  height: 140,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  onPageChanged: (index,_){
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
              ),
          Wrap(
            direction: Axis.horizontal,
            children:   List<Widget>.generate(3, (index) {
              return Container(
                height: 10,
                width: 10,
                margin: const EdgeInsets.only(top: 20, left: 4, right: 4),
                decoration: BoxDecoration(
                  color:index==currentIndex ? kBlackAccentColor : kBlackAccentColor.withOpacity( 0.2),
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
          SizedBox(height: 20),
          rowWidget(title: 'Popular', sub: 'Show all',),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                homePopularItem(
                  imageUrl: 'assets/image_product_popular1.png',
                  title: 'Paon Chair',
                  Price: ' 34',
                ),
                const SizedBox(width: 10),
                homePopularItem(
                  imageUrl: 'assets/image_product_popular2.png',
                  title: 'Sofa Chair',
                  Price: ' 22',
                ),
                const SizedBox(width: 10),
                homePopularItem(
                  imageUrl: 'assets/image_product_popular1.png',
                  title: 'Chair',
                  Price: ' 30',
                ),
                const SizedBox(width: 20),
                homePopularItem(
                  imageUrl: 'assets/image_product_popular1.png',
                  title: 'Chair',
                  Price: ' 20',
                ),
              ],
            ),)
            ],
          ),
        ),
      ),
     
    );
  }
}


