import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'image-slider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Gallery",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0x00000fff),
        elevation: 0,
      ),
      body: Container(
        child: MyImages(),
      ),
      bottomNavigationBar: const DefaultTabController(
        length: 3,
        child: TabBar(
          tabs: [
            Tab(text: "Nature"),
            Tab(text: "Street",),
            Tab(text: "Architecture",)
          ],
        ),
      ),
    );
  }
}

