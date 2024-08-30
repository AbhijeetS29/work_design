import 'package:flutter/material.dart';
import 'package:work_design/home_page_widgets/horizontal_coupom_texts.dart';
import 'package:work_design/home_page_widgets/second_home_slide.dart';
import 'package:work_design/utils/colors.dart';

import 'first_home_slider.dart';
import 'grocery_button.dart';

class HomeContentBar extends StatefulWidget {
  const HomeContentBar({super.key});

  @override
  State<HomeContentBar> createState() => _HomeContentBarState();
}

class _HomeContentBarState extends State<HomeContentBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height, // Full screen height
      color: bgColor2, // Light grey background
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Here affordability meets convenience",
              style: TextStyle(
                  color: Colors.white, fontFamily: "poppins", fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              // Center the entire Text widget within the Padding
              child: Text(
                "because you deserve the best without \n breaking the bank",
                textAlign: TextAlign.center,
                // Center text alignment within the widget
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppins",
                  fontSize: 13,
                ),
              ),
            ),
          ),
          //first home slider
          FirstHomeSlider(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))
              ),
            
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SecondHomeSlider(),
                      HorizontalScrollText(),
                      GroceryButton()

                    ],
                  )
            ),
          )
        ],
      ),
    );
  }
}
