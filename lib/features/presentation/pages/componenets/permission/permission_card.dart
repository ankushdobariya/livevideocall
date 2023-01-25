import 'package:flutter/material.dart';

class PermissionCard extends StatelessWidget {
  const PermissionCard({Key? key, required this.permission, required this.subTitle, required this.grantPermisson}) : super(key: key);

  final String permission;
  final String subTitle;
  final Function() grantPermisson;

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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              color: Colors.black,
              child: InkWell(
                onTap: grantPermisson,
                child: Container(
                  height: size.height * 0.03,
                  width: size.width * 0.17,
                  alignment: Alignment.center,
                  child: Text("Set",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.08,),
          ],
        ),
      ),
    );
  }
}
