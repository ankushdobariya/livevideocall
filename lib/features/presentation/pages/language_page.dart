import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/componenets/language_card.dart';
import 'package:livevideocall/features/presentation/pages/permission_page.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List language = [
    "Gujrati",
    "English",
    "Marathi",
    "Chinise",
    "Hindi",
    "Telugu"
  ];
  List bgColor = [
    Colors.blue.shade100,
    Colors.red.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.green.shade100,

  ];
  List color = [
    Colors.blue.shade400,
    Colors.red.shade400,
    Colors.yellow.shade400,
    Colors.pink.shade400,
    Colors.orange.shade400,
    Colors.green.shade400,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Center(child: Text("Select",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
            Center(child: Text("Your Language",style: Theme.of(context).textTheme.headline1,)),
            SizedBox(height: size.height * 0.04,),
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.5,
                  crossAxisCount: 2),
                  itemCount: language.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PermissionPage();
                          },));
                      },
                      child: LanguageCard(
                        color1: bgColor[index],
                        color2: color[index],
                        language: language[index],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
