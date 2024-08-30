import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstHomeSlider extends StatefulWidget {
  const FirstHomeSlider({Key? key}) : super(key: key);

  @override
  State<FirstHomeSlider> createState() => _FirstHomeSliderState();
}

class _FirstHomeSliderState extends State<FirstHomeSlider> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          child: PageView(
            controller: _pageController,
            children: [
              _buildImageSlide("assets/images/first_slide_first_pic.png"),
              _buildImageSlide("assets/images/first_slide_first_pic.png"),
              _buildImageSlide("assets/images/first_slide_first_pic.png"),
            ],
          ),
        ),
        SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotColor: Colors.grey.withOpacity(0.5),
            activeDotColor: Colors.white,
            dotHeight: 3,
            dotWidth: 12,
            spacing: 8,
          ),
          onDotClicked: (index) {
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceIn,
            );
          },
        ),
      ],
    );
  }

  Widget _buildImageSlide(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}