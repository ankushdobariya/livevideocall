import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/componenets/user_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.pink.shade50,
      ),
      backgroundColor: Colors.pink.shade50,
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,

              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Spacer(flex: 3,),
                  UserCard(userIcon: "image/user8.png"),
                  Spacer(),
                  Text("User Name",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                  Text("User Age",style: TextStyle(color: Colors.black),),
                  Spacer(flex: 3,),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02,),
            Container(
              height: size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.03,),
                  const Icon(Icons.supervised_user_circle_sharp),
                  SizedBox(width: size.width * 0.03,),
                  const Text("Edit Profile",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios),
                  SizedBox(width: size.width * 0.01,),
                ],
              )
            ),
            SizedBox(height: size.height * 0.02,),
            Container(
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.03,),
                    const Icon(Icons.lock),
                    SizedBox(width: size.width * 0.03,),
                    const Text("Privacy",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios),
                    SizedBox(width: size.width * 0.01,),
                  ],
                )
            ),
            SizedBox(height: size.height * 0.02,),
            Container(
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.03,),
                    const Icon(Icons.share),
                    SizedBox(width: size.width * 0.03,),
                    const Text("Share",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios),
                    SizedBox(width: size.width * 0.01,),
                  ],
                )
            ),
            SizedBox(height: size.height * 0.02,),
            Container(
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.03,),
                    const Icon(Icons.star),
                    SizedBox(width: size.width * 0.03,),
                    const Text("Rate",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios),
                    SizedBox(width: size.width * 0.01,),
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}
