import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeTotalPriceText extends StatefulWidget {
  const HomeTotalPriceText({super.key});

  @override
  State<HomeTotalPriceText> createState() => _HomeTotalPriceTextState();
}

class _HomeTotalPriceTextState extends State<HomeTotalPriceText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("Total Price",style: TextStyle(
                  fontFamily: 'poppins',color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w500
                  ),),
          ),Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text("160*5 = \$800",style: TextStyle(
                  fontFamily: 'poppins',color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w600
                  ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: SizedBox(
              width: double.infinity, // Makes the button full width
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgColor2,
                  shadowColor: bgColor2, // Add shadow color
                  elevation: 9, // Adjust the elevation for shadow effect
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Confirm Slots",
                  style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
