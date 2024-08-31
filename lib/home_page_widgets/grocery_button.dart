import 'package:flutter/material.dart';
import 'package:work_design/utils/colors.dart';

class GroceryButton extends StatefulWidget {
  const GroceryButton({super.key});

  @override
  State<GroceryButton> createState() => _GroceryButtonState();
}

class _GroceryButtonState extends State<GroceryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: SizedBox(
        width: double.infinity, // Makes the button full width
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor2,
            shadowColor: bgColor2, // Add shadow color
            elevation: 8, // Adjust the elevation for shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            "Grocery",
            style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: 16),
          ),
        ),
      ),
    );
  }
}
