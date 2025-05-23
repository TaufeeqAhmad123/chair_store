
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;
  bool isShowReview = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.chevron_left),
            ),

            Image.asset('assets/image_detail$currentIndex.png'),
            const SizedBox(height: 20),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.3,
                maxChildSize: 0.95,
                builder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      color: kWhiteColor,
                    ),
                    child: NotificationListener(
                      onNotification: (notification) {
                        if (notification is ScrollEndNotification) {
                          final position = notification.metrics.pixels;
                          final max = notification.metrics.maxScrollExtent;

                          if ((position - max).abs() < 10.0) {
                            // Fully expanded
                            setState(() {
                              isExpand = true;
                            });
                          } else {
                            setState(() {
                              isExpand = false;
                            });
                          }
                        }
                        return true;
                      },

                      child: SingleChildScrollView(
                        controller: ScrollController(),
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Center(
                                child: Container(
                                  width: 30,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: kLineDarkColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Poang Children',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  Text(
                                    '\$219',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Text(
                                'IKOE',
                                style: blackTextStyle.copyWith(fontSize: 18),
                              ),
                              SizedBox(height: 16),
                              Container(
                                height: 50,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Row(
                                      children: [
                                        colorIndicator(Color(0xff394A54), 0),
                                        colorIndicator(Color(0xffEBAB23), 1),
                                        colorIndicator(Color(0xff757477), 2),
                                        colorIndicator(Color(0xff29282C), 3),
                                        colorIndicator(Color(0xffECE9DA), 4),
                                      ],
                                    ),
                                    AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(
                                        left: indicatorMargin,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: indicatorColor,
                                        border: Border.all(
                                          color: kWhiteColor,
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: 16),
                              isShowReview
                                  ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Review',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 22,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      reviewcard(
                                        name: 'Lidya Clayton',
                                        image: 'assets/image_reviewer1.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        item: [
                                          'assets/image_product_list1.png',
                                          'assets/image_product_list2.png',
                                          'assets/image_product_list3.png',
                                        ],
                                      ),
                                      reviewcard(
                                        name: 'Audra Still',
                                        image: 'assets/img_reviewer2.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        item: [
                                          'assets/image_product_list3.png',
                                          'assets/image_product_list4.png',
                                        ],
                                      ),
                                      reviewcard(
                                        name: 'Joan Gray',
                                        image: 'assets/img_reviewer3.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        item: [
                                          'assets/image_product_list2.png',
                                          'assets/image_product_list3.png',
                                        ],
                                      ),
                                    ],
                                  )
                                  : Container(),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ), // Add your detail screen content here
      bottomNavigationBar:
          isShowReview
              ? null
              : isExpand
              ? Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kWhiteColor.withOpacity(0.5), kWhiteColor],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isShowReview = true;
                        });
                      },
                      child: Text(
                        'See More',
                        style: blueTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              : Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: kGreyColor,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: kWhiteGreyColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset('assets/icon_cart.png', width: 24),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: kBlackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            'Buy Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index + 1;
          indicatorColor = color;
          indicatorMargin = 5 + (index * 60);
        });
      },
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}

class reviewcard extends StatelessWidget {
  final String name, review, image;
  final List<String> item;
  const reviewcard({
    super.key,
    required this.name,
    required this.review,
    required this.image,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: 56),
          const SizedBox(width: 35),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: blackTextStyle.copyWith(fontSize: 16)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: kYellowColor),
                    Icon(Icons.star, color: kYellowColor),
                    Icon(Icons.star, color: kYellowColor),
                    Icon(Icons.star, color: kYellowColor),
                    Icon(Icons.star, color: kYellowColor),
                  ],
                ),
                SizedBox(height: 8),
                Text.rich(
                  TextSpan(
                    text: review,
                    style: greyTextStyle,
                    children: [TextSpan(text: 'more', style: blackTextStyle)],
                  ),
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  child: Row(
                    children:
                        item
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.only(right: 12),
                                child: Image.asset(e, width: 72),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
