import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';


const List<String> natureImage = [
  'asset/img/Nature/haotian-zheng-ePY52Jm5yOM-unsplash.jpg',
  'asset/img/Nature/laurin-dal-castel-i0asXE8RDyc-unsplash.jpg',
  'asset/img/Nature/laurin-dal-castel-qCR_bpofKjE-unsplash.jpg',
  'asset/img/Nature/sagar-kulkarni-pIuWVh-XQUI-unsplash.jpg',
  'asset/img/Nature/yanissa-metselaar-DUfTUV_EzcY-unsplash.jpg'
];

const List<String> streetImage = [
  'asset/img/Street/dante-janssens-EsuPb6hAI8A-unsplash.jpg',
  'asset/img/Street/dave-weatherall-T0gNUoe1cqA-unsplash.jpg',
  'asset/img/Street/drew-beamer-97dvTreaYew-unsplash.jpg',
  'asset/img/Street/matthew-cabret-V1DlMgZ2UEA-unsplash.jpg',
  'asset/img/Street/sajad-nori-SXyzuzhl-4Q-unsplash.jpg',
];

const List<String> architectureImage = [
  'asset/img/Architecture/chloe-chavanon-1a0Hqj16KA0-unsplash.jpg',
  'asset/img/Architecture/chloe-chavanon-ttF84ygvliI-unsplash.jpg',
  'asset/img/Architecture/chloe-chavanon-u2XL6TMsNbY-unsplash.jpg',
  'asset/img/Architecture/joel-filipe-RFDP7_80v5A-unsplash.jpg',
  'asset/img/Architecture/marta-nguyen-5jRu4IrLcUk-unsplash.jpg',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Gallery",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat-Bold',
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0x00000fff),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                FanCarouselImageSlider(
                  imagesLink: natureImage,
                  isAssets: true,
                  autoPlay: false,
                ),
                FanCarouselImageSlider(
                  imagesLink: streetImage,
                  isAssets: true,
                  autoPlay: false,
                ),
                FanCarouselImageSlider(
                  imagesLink: architectureImage,
                  isAssets: true,
                  autoPlay: false,
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: TabBar(
        labelStyle: TextStyle(fontFamily: 'Montserrat-Regular'),
        labelColor: Colors.black,
        controller: _tabController,
        tabs: [
          Tab(text: "Nature"),
          Tab(text: "Street"),
          Tab(text: "Architecture"),
        ],
      ),
    );
  }
}

