import 'package:flutter/material.dart';

class AllItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.limeAccent,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurpleAccent,
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset('assests/assest/$i.jpg',
                        height: 130, width: 130),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "vhjg",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w100,
                          color: Colors.pinkAccent),
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
