// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, must_be_immutable, unused_element, avoid_unnecessary_containers

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List images = [
    "img5.jpg",
    "img6.jpg",
    "img7.jpg",
    "img8.jpg",
  ];
  List titles = [
    "The Great ",
    "The Wall ",
    " Wall of China",
    "The Great China",

  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Menu Text
        Container(
          margin: EdgeInsets.only(top: 70, left: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                // Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        //Discover Text
        Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover")),
        SizedBox(
          height: 20,
        ),
        //TabBar
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: DefaultTabController(
              length: 3,
              child: TabBar(
                indicatorColor: Color.fromARGB(253, 0, 0, 0),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label, //makes it better

                isScrollable: true,
                controller: _tabController,
                // padding: EdgeInsets.only(left: 10, right: 10),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    child: Text(
                      "Places",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Inspirations",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Emotions",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 20,top: 20),
          // ignore: prefer_const_literals_to_create_immutables
          child: TabBarView(controller: _tabController, children: [
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 20,),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/${images[index]}"),
                          fit: BoxFit.cover)),
                );
              },
            ),
            Text("Two"),
            Text("three"),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              AppLargeText(
                text: "Popular",
                size: 20,
              ),
              AppText(
                text: "See all",
                size: 15,
                color: Color.fromARGB(255, 34, 29, 84),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: double.maxFinite,
          margin: EdgeInsets.only(left: 20),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(right: 50),
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/${images[index]}"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      child: AppText(
                        text: "${titles[index]}",
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    throw UnimplementedError();
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    canvas.drawCircle(offset, radius, _paint);
  }
}
