import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/componenets/country_card.dart';
import 'package:livevideocall/features/presentation/pages/term%20_of_use_page.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {

  List countryCode = [
    "Uk",
    "USA",
    "Canada",
    "Australia",
    "SwitzerLand",
    "World Wide"
  ];
  List country = [
    "United Kingdom",
    "United States",
    "Canada",
    "Australia",
    "SwitzerLand",
    "World Wide"
  ];
  List countryImg =[
    "https://www.dating.com/girls/terra-assets/images/article/1-b5afab9510-3.jpg",
    "https://i.pinimg.com/236x/30/6f/2b/306f2b654d0ce375e8c1740abf4a237b.jpg",
    "https://i.pinimg.com/236x/02/c9/35/02c935d0a6517d5444085b15d903ba49.jpg",
    "https://i.pinimg.com/236x/5d/6f/73/5d6f7378524dff2516277ae618ea9ccd.jpg",
    "https://i.pinimg.com/236x/ec/6b/bc/ec6bbc2985995e6eb9114ebf1aaaebd5.jpg",
    "https://i.pinimg.com/236x/5e/af/d7/5eafd7e59689dc993cf059c6f51e1979.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TermOfUSe();
            },));
          }, child: const Text(
            "Not Now",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
      children: [
        SizedBox(height: size.height * 0.015,),
        const Center(
            child: Text(
          "Select Country",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        )),
        const Text(
          "Connect VPN Now For a Secure and Private Network",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        SizedBox(height: size.height * 0.015,),
        SizedBox(
          height: size.height * 0.55,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: country.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const TermOfUSe();
                    },));
                  },
                  child:  CountryCard(
                    country: country[index],
                    countryCode: countryCode[index],
                    countryImage: countryImg[index],
                  ));
            },
          ),
        ),
        SizedBox(height: size.height * 0.015,),
        Expanded(child: Image.asset("image/a1.png",fit: BoxFit.cover,)),
      ],
        ),
      ),
    );
  }
}
