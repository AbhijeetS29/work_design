import 'dart:async';
import 'package:flutter/material.dart';
import 'package:work_design/utils/colors.dart';

class CircularCountdown extends StatefulWidget {
  const CircularCountdown({Key? key}) : super(key: key);

  @override
  _CircularCountdownState createState() => _CircularCountdownState();
}

class _CircularCountdownState extends State<CircularCountdown> {
  late int hours, minutes, seconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    hours = 7;
    minutes = 45;
    seconds = 59;

    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        if (minutes > 0) {
          setState(() {
            minutes--;
            seconds = 59;
          });
        } else {
          if (hours > 0) {
            setState(() {
              hours--;
              minutes = 59;
              seconds = 59;
            });
          } else {
            timer.cancel();
          }
        }
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildTimeContainer(hours, 'Hours'),
        buildTimeContainer(minutes, 'Minutes'),
        buildTimeContainer(seconds, 'Seconds'),
      ],
    );
  }

  Widget buildTimeContainer(int timeValue, String label) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: bgColor2, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("$timeValue",style: TextStyle(
                        fontFamily: 'poppins',color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w600
                      ),),Text("$label",style: TextStyle(
                        fontFamily: 'poppins',color: Colors.black38,fontSize: 6,fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
