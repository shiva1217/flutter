import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BorderRadiusDirectional,
        BottomNavigationBar,
        BoxConstraints,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        ClipRRect,
        Colors,
        Column,
        Container,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        Icon,
        Icons,
        Image,
        InputBorder,
        InputDecoration,
        ListView,
        MainAxisAlignment,
        Material,
        Offset,
        OutlineInputBorder,
        Positioned,
        Row,
        Scaffold,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextField,
        TextStyle,
        Widget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:metanest/RowItemWidget.dart';
import 'package:metanest/categorry.dart';
import 'package:metanest/favourite.dart';
import 'package:metanest/home.dart';
import 'package:metanest/person.dart';
import 'package:metanest/search.dart';
import 'package:metanest/user.dart';
import 'AllItemWidget.dart';
import 'color.dart' as color;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gap/gap.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'categories.dart';
import 'location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  TextEditingController textController = TextEditingController();
  int selectedcategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedcategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Container(
          width: size.width * 0.25,
          decoration: BoxDecoration(
              color: selectedcategoryIndex == index
                  ? Colors.black
                  : Colors.grey[350],
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedcategoryIndex == index
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final items = [
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite_outline_outlined, size: 30),
      Icon(Icons.person, size: 30),
    ];

    final List<String> imgList = [
      'https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXBhcnRtZW50JTIwcmVudGFsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1460317442991-0ec209397118?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXBhcnRtZW50fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1493606371202-6275828f90f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGFwYXJ0bWVudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnVpbGRpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 4, 96, 255),
        title: Text(
          "MetaNest",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(199, 0, 0, 0),
          ),
        ),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 10),
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(25),
                child: Image.asset('assests/images/profile.png'),
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "   Hi Jonathan !",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text(
                        "Tokyo, Japan",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[350],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "e.g : flat in patna",
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.blueGrey,
                          suffixIcon: Icon(Icons.mic),
                          suffixIconColor: Colors.blueGrey,
                        ),
                      ),
                      // SizedBox(height: 20),
                      // Expanded(child: ListView(),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: size.height * 0.05,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryList.length,
                        itemBuilder: (context, index) {
                          return _buildCategory(context, index);
                        }),
                  ),
                ),
                const Gap(40),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                )),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "    Featured Estates",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All    ",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                    ),
                  ],
                ),
                const Gap(40),
                RowItemWidget(),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "    Top Locations",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Explore    ",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                    ),
                  ],
                ),
                const Gap(40),
                location(),
                const Gap(40),
                Person(),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "    Top Estate Agents",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Explore    ",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "    Explore NearBy Estates",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Gap(40),
                AllItemWidget(),
                const Gap(40),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
