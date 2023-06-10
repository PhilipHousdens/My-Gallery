import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class MyImages extends StatefulWidget {
  const MyImages({super.key});

  @override
  State<MyImages> createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBarView(
        children: [
          FanCarouselImageSlider(imagesLink: natureImage, isAssets: false, autoPlay: false,),
          FanCarouselImageSlider(imagesLink: streetImage, isAssets: false, autoPlay: false,),
          FanCarouselImageSlider(imagesLink: architectureImage, isAssets: false, autoPlay: false,),

        ],
      ),
    );
  }
}

