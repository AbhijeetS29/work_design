import 'package:flutter/material.dart';

class HorizontalScrollText extends StatefulWidget {
  const HorizontalScrollText({super.key});

  @override
  State<HorizontalScrollText> createState() => _HorizontalScrollTextState();
}

class _HorizontalScrollTextState extends State<HorizontalScrollText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text(
            "Jacksmith just bought 2 coupons(AB)        Jacksmith just bought 2 coupons(AB))        Jacksmith just bought 2 coupons(AB)        Jacksmith just bought 2 coupons(AB)  ",
            style: TextStyle(fontFamily: "poppins",color: Colors.green,fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
