import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({Key? key, required this.countryImage, required this.countryCode, required this.country}) : super(key: key);

  final String countryImage;
  final String countryCode;
  final String country;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Container(
            height: size.height * 0.14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                ),
               image: DecorationImage(
                 image: NetworkImage(countryImage),fit: BoxFit.cover
               )
              ),
            ),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: size.width * 0.03,),
                Container(
                  width: size.width * 0.08,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("image/Country.jpg",),fit: BoxFit.fill
                    )
                  ),

                ),
                SizedBox(width: size.width * 0.03,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 4,),
                    Text(countryCode,style: TextStyle(color: Colors.black),),
                    Spacer(),
                    Text(country,style: TextStyle(color: Colors.black,fontSize: 10),),
                    Spacer(flex: 4,),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
