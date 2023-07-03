import 'home_page.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  // const RowItemWidget({super.key});

  // @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 6; i++)
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 30),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(1, 255, 99, 71),
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        // width: 13,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Image.asset(
                        'assests/image/$i.jpg',
                        height: 200,
                        width: 150,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Dandelions',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Apartment',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 214, 90, 19),
                                  size: 12,
                                ),
                                Text(
                                  " 4.9",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                Text(
                                  "Tokyo, Japan",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'Rs.3000/',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 5),
                              // SizedBox(height: 5),
                              Text(
                                'month   ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 20),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 26, 204, 118),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Icon(Icons.favorite_sharp,
                                            color: Colors.white, size: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                  // Spacer(),

                  // SizedBox(width: 10),
                  //       Container(
                  //         padding: EdgeInsets.all(10),
                  //         decoration: BoxDecoration(
                  //           color: const Color.fromARGB(255, 26, 204, 118),
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         child: Icon(Icons.favorite_sharp,
                  //             color: Colors.white, size: 10),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
