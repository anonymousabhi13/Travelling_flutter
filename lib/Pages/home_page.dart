// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List images = [
    // 'img1.jpg',
    'img2.jpg',
    // 'img3.jpg',
    // 'img4.jpg',
    // 'img5.jpg',
    // 'img6.jpg',
    // 'img7.jpg',
    'img8.jpg',
    'img9.jpg',
    // 'img10.jpg'
  ];
  List imgText = ["Trips", "Campaign", "Surfing"];
  List imgText2 = ["By Roads", "City", "Ocean"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/${images[index]}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: imgText[index]),
                          AppText(text: imgText2[index], size: 30),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Explore the world in a new way with us, we will take you to the most beautiful places in the world",
                              size: 14,
                              color: AppColors.textColor2,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ResponsiveButton(width: 120)
                        ]),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(3, (indexslider) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexslider ? 25 : 8,
                          decoration: BoxDecoration(
                            color: index == indexslider
                                ? Color.fromARGB(179, 12, 12, 12)
                                : Color.fromARGB(99, 12, 12, 12)
                                    .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
