import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work_design/utils/colors.dart';
import '../home_page_widgets/home_Content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          padding: const EdgeInsets.only(top: 10,left: 20,bottom: 10),
          child: Container(
            width: 40, // Adjust size as needed
            height: 40, // Adjust size as needed
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          HomeContentBar(),
        ],
      ),
    );
  }
}
