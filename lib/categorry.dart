// import 'package:flutter/material.dart';

// import 'home_page.dart';

// class Categorry extends StatefulWidget {
//   @override
//   State<Categorry> createState() => _CategoryState();
// }

// class _CategoryState extends State<Categorry> {
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       height: 100,
//       child: ListView(
//       scrollDirection: Axis.horizontal,
//       children: [
//         CategorryProducts(
//       press: () {

//       },
//       image: 'assests/images/background.jpg',
//       text: 'gfdghf',
//     ),
//       ],
//     ),
//     )
//   }
// }

// class CategorryProducts extends StatelessWidget{
//   const CategorryProducts({required Key key,
//   required this.image,
//  required this.text,
//   required this.press,
//   }); super(key : key);
// final String image,text;
// final VoidCallback press;

// @override
//   Widget build(BuildContext context){
//     return Padding(
//       padding: const EdgeInsets.all(2),
//       child: GestureDetector(
//         onTap: press,
//         child: Container(
//           child: Chip(
//               label: Row(
//             children: [
//               Text(text),
//               Image.asset(
//                 image,
//                 height: 40,
//               )
//             ],
//           )),
//         ),
//       ),
//     );
//   }
// }
