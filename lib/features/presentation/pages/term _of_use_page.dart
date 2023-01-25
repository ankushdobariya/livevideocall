import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/country_Page.dart';
import 'package:livevideocall/features/presentation/pages/language_page.dart';

class TermOfUSe extends StatefulWidget {
  const TermOfUSe({Key? key}) : super(key: key);

  @override
  State<TermOfUSe> createState() => _TermOfUSeState();
}

class _TermOfUSeState extends State<TermOfUSe> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Term OF Use",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                const Center(
                  child: Text(
                    "Android App",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                    "Android Apps id warming you about the app that gives you many serviecs and important inforamtion for safer and efficient use.",
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  height: size.height * 0.030,
                ),
                Text(
                  "By pressing the Accept button, i declare i have read and accepted the following condition of use:",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Spacer(),
                SizedBox(
                  height: size.height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset("image/man.jpg",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: size.width * 0.015,),
                      const Flexible(child: Text("By pressing the Accept button, i declare i have read and accepted the following condition of use:",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset("image/man.jpg",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: size.width * 0.015,),
                      const Flexible(child: Text("By pressing the Accept button, i declare i have read and accepted the following condition of use:",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset("image/man.jpg",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: size.width * 0.015,),
                      const Flexible(child: Text("By pressing the Accept button, i declare i have read and accepted the following condition of use:",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset("image/man.jpg",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: size.width * 0.015,),
                      const Flexible(child: Text("By pressing the Accept button, i declare i have read and accepted the following condition of use:",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset("image/man.jpg",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: size.width * 0.015,),
                      const Flexible(child: Text("By pressing the Accept button, i declare i have read and accepted the following condition of use:",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
                const Spacer(),
                Text("You can find out more information by clicking on the",style: Theme.of(context).textTheme.headline1,),
                const Spacer(),
                Row(
                  children: [
                    Text("Following Link : ",style: Theme.of(context).textTheme.headline1,),
                    const Text("Term and Condition of use",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text("Following Link : ",style: Theme.of(context).textTheme.headline1,),
                    const Text("Privacy Policy",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text("Following Link : ",style: Theme.of(context).textTheme.headline1,),
                    const Text("App Community Guidelines",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
                  ],
                ),
                const Spacer(),

                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.44,
                      height: size.height * 0.065,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
                          return const CountryPage();
                        },));
                      }, child: const Text("Reject",style: TextStyle(color: Colors.black),),)
                    ),
                    Container(
                      width: size.width * 0.44,
                      height: size.height * 0.065,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const LanguagePage();
                        },));
                      }, child: const Text("Accept",style: TextStyle(color: Colors.white),),)
                    )
                  ],
                ),
                const Spacer(),

              ],
            ),
          ),
        ));
  }
}
