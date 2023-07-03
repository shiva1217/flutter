import 'package:flutter/material.dart';
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
import 'package:metanest/favourite.dart';
import 'package:metanest/home.dart';
import 'package:metanest/house_card.dart';
import 'package:metanest/search.dart';
import 'package:metanest/user.dart';
import 'color.dart' as color;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gap/gap.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'categories.dart';

class listing extends StatefulWidget {
  listing(this.title, this.items, {Key? key}) : super(key: key);
  String? title;
  List<Item> items;

  @override
  State<listing> createState() => _listingState();
}

class _listingState extends State<listing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("See All"))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 340,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Widget.item.length,
                itemBuilder: ((context, index) => ItemCard()),
              ))
        ],
      ),
    );
  }
}
