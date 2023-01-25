import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({Key? key, required this.color1, required this.color2, required this.language}) : super(key: key);

  final Color color1;
  final Color color2;
  final String language;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.13,
        width: size.width * 0.45,
        decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(15)
        ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.15,

                  decoration: BoxDecoration(
                      color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height * 0.058,
                  width: size.width * 0.15,

                  decoration: BoxDecoration(
                      color:color2,
                      shape: BoxShape.circle
                  ),
                  alignment: Alignment.center,
                  child: Text("A",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          Text(language,style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}
