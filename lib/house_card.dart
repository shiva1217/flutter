import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.item, this.onTap {Key ? Key}): super(key : key);
   Item item;
   Function()? onTap;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadiusDirectional.circular(8),
        border: Border.all(color: Colors.tealAccent),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(padding:EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepOrangeAccent,
                image: DecorationImage(image: NetworkImage(widget.item.thumb_url!),
                fit: BoxFit.cover,),
              ),
            )
          ],
        ), 
        ),
      )
    );
  }
}