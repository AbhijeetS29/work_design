import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:work_design/utils/colors.dart';

class SecondHomeSlider extends StatefulWidget {
  const SecondHomeSlider({super.key});

  @override
  State<SecondHomeSlider> createState() => _SecondHomeSliderState();
}

class _SecondHomeSliderState extends State<SecondHomeSlider> {
  final PageController slideController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [Colors.grey.withOpacity(0.1), Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: slideController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [Colors.grey.withOpacity(0.3), Colors.white],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Special Offer and Manaraj Sweet logo Area
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 1, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/images/manrajlogo.png",
                                        width: 55, height: 55),
                                    const Text("Special Offer",
                                        style: TextStyle(
                                            fontFamily: "italy", fontSize: 25)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 1, left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: bgColor2.withOpacity(0.2),
                                      ),
                                      child: const Center(
                                        child: Text("50% Off",
                                            style: TextStyle(
                                                color: bgColor2,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text("on all orders",
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 10)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 20),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.green),
                                    minimumSize: const Size(100, 32),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.whatsapp,
                                        color: Colors.green,
                                        size: 15,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "Whatsapp",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.green,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          //images Gulab Jamun and Sponsor sign
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/manrajgulabjamun.png',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  top: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/sponsor.png',
                                      width: 80,
                                      height: 40,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            // Slide Indicator
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: slideController,
                  count: 5, // Number of pages
                  effect: SlideEffect(
                    dotColor: Colors.grey.withOpacity(0.3),
                    activeDotColor: Colors.white,
                    dotHeight: 5,
                    dotWidth: 5,
                    spacing: 8,
                  ),
                  onDotClicked: (index) {
                    slideController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
