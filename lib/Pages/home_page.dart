import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work_design/utils/colors.dart';
import '../home_page_widgets/home_Content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Tracks the selected tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          width: 50,
          height: 50,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: Container(
            width: 40,
            height: 40,
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
            child: const Center(
              child: Icon(
                color: bgColor2,
                FontAwesomeIcons.hamburger,
                size: 22,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Define action for wallet icon button
            },
            icon: const Icon(
              FontAwesomeIcons.wallet,
              color: bgColor2,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {
              // Define action for language icon button
            },
            icon: const Icon(
              FontAwesomeIcons.language,
              color: bgColor2,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {
              // Define action for bell icon button
            },
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: bgColor2,
              size: 22,
            ),
          ),
        ],
      ),
      body:  HomeContentBar(),
      floatingActionButton: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: bgColor2.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: bgColor2,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: _selectedIndex == 0 ? bgColor2 : Colors.black87,
                    size: 20,
                  ),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.bookOpen,
                    color: _selectedIndex == 1 ? bgColor2 : Colors.black87,
                  ),
                  onPressed: () => _onItemTapped(1),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.shoppingCart,
                    color: _selectedIndex == 2 ? bgColor2 : Colors.black87,
                  ),
                  onPressed: () => _onItemTapped(2),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    color: _selectedIndex == 3 ? bgColor2 : Colors.black87,
                  ),
                  onPressed: () => _onItemTapped(3),
                ),
              ],
            ),
          ],
        ),
        color: Colors.white, // Background color of the BottomAppBar
        shape: CircularNotchedRectangle(), // To create a notch for FloatingActionButton
      ),

    );
  }
}
