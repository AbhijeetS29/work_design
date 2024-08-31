import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';

class HomeBcFilterSection extends StatefulWidget {
  const HomeBcFilterSection({super.key});

  @override
  State<HomeBcFilterSection> createState() => _HomeBcFilterSectionState();
}

class _HomeBcFilterSectionState extends State<HomeBcFilterSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 15),
          child: Row(
            children: [
              Image.asset("assets/images/store.png"),
            SizedBox(width: 10,),
              Text("BC",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black87,fontFamily: 'poppins'),)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 20,bottom: 10),
          child: GestureDetector(
            onTap: (){

            },
            child: Container(
              width: 30, // Adjust size as needed
              height: 30, // Adjust size as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: bgColor2.withOpacity(0.2),
                    spreadRadius: 1.0,
                    blurRadius: 1.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child:  Center(
                child: Image.asset("assets/images/filter.png",width: 20,height: 20,)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
