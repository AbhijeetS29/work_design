import 'dart:async';

import 'package:flutter/material.dart';
import 'package:work_design/home_page_widgets/raminning_time_containers.dart';
import 'package:work_design/utils/colors.dart';

import '../utils/balance_coupon_list.dart';

class HomeBalanceCard extends StatefulWidget {
  const HomeBalanceCard({super.key});

  @override
  State<HomeBalanceCard> createState() => _HomeBalanceCardState();
}

class _HomeBalanceCardState extends State<HomeBalanceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: bgColor2.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Coupon Details:",style: TextStyle(fontFamily: "poppins",color: Colors.black87,fontSize: 12,fontWeight: FontWeight.w500),)
                  ,Text("Price per Slot = \$5",style: TextStyle(fontFamily: "poppins",color: Colors.black87,fontSize: 12,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i=0;i<listItems.length;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          color: bgColor2,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(listItems[i]['pName'],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,fontFamily: 'poppins',color: Colors.white),)
                            ,Text(listItems[i]['rate'],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,fontFamily: 'poppins',color: Colors.white),)
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                height: 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor2
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text("Balance:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,fontFamily: 'poppins',color: Colors.black87),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("\$1453",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,fontFamily: 'poppins',color: Colors.black87),),
                  )
                ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Remaining Time",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,fontFamily: 'poppins',color: Colors.black87),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:CircularCountdown()
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

