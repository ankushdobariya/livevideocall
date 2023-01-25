import 'package:flutter/material.dart';

class PermissonGranted extends StatelessWidget {
  const PermissonGranted({Key? key, required this.permission, required this.subTitle}) : super(key: key);

  final String permission;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 3,
      child:
      Container(
        height: size.height * 0.08,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            SizedBox(width: size.width * 0.08,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(permission,style: TextStyle(color: Colors.black),),
                Text(subTitle,style: TextStyle(color: Colors.grey.shade600,fontSize: 11),),


              ],
            ),
            Spacer(),
            SizedBox(
              height: size.height * 0.04,
              child: Image.asset("image/check.png"),
            ),
            SizedBox(width: size.width * 0.08,),
          ],
        ),
      ),
    );
  }
}
