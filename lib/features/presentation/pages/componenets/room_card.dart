import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key, required this.bgColor, required this.roomNo, required this.roomCategory, required this.image, required this.onTap}) : super(key: key);

  final Color bgColor;
  final String roomNo;
  final String roomCategory;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * 0.20,
        width: size.width * 0.30,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(roomNo,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            Text(roomCategory,style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("Online : 10020",style: TextStyle(color: Colors.white,fontSize: 8),),
            SizedBox(height: size.height * 0.01,)
          ],
        ),
      ),
    );
  }
}
