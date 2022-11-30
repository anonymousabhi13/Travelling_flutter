// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({super.key});

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  int SelectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img6.jpg'),
                          fit: BoxFit.fitWidth)),
                )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.black,
                    ),
                  ],
                )),
            Positioned(
                top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'The Grand Canyon',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Arizona, USA',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹ 1,00,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'People',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'No of people in your group',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          mouseCursor: SystemMouseCursors.progress,
                          onTap: () {
                            setState(() {
                              SelectedIndex = index;
                              print(index + 1);
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: AppButton(
                              color: SelectedIndex == index
                                  ? Colors.white
                                  : Color.fromARGB(40, 158, 158, 158),
                              backgroundColor: SelectedIndex == index
                                  ? Colors.black
                                  : Color.fromARGB(255, 95, 92, 92),
                              size: 50,
                              bordercolor: SelectedIndex == index
                                  ? Colors.black
                                  : Color.fromARGB(37, 86, 86, 86),
                              text: (index + 1).toString(),
                              icon: Icons.favorite_outline,
                              isIcon: true,
                            ),
                          ),
                        );
                        // ignore: dead_code
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "Description",
                    //   textAlign: TextAlign.start,
                    // ),

                    Container(
                        margin: EdgeInsets.only(right: 170),
                        child: AppLargeText(text: "Description")),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 38, left: 30),
                      child: AppText(
                        text:
                            "In controller's init  data from network or loading data from JSON files.In the controller your varables could be obs or non obs type. In the controller your varables could.",
                        size: 15,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Positioned(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppButton(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            size: 60,
                            bordercolor: Colors.black,
                            icon: Icons.favorite_outline,
                            isIcon: false,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ResponsiveButton(
                            width: 220,
                            isResponsive: true,
                            
                          ),
                        ],
                      )),
                    )
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
