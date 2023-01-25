import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/componenets/user_card.dart';
import 'package:livevideocall/features/presentation/pages/home_page.dart';

class SetProfilePage extends StatefulWidget {
  const SetProfilePage({Key? key}) : super(key: key);

  @override
  State<SetProfilePage> createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {

  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();

  String profilePic = "image/user7.png";

  List userIcon = [
    "image/user1.png",
    "image/user2.png",
    "image/user3.png",
    "image/user4.png",
    "image/user5.png",
    "image/user6.png",
    "image/user7.png",
    "image/user8.png",
    "image/user9.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              // color: Colors.purpleAccent,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: size.height * 0.17,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: size.height * 0.054,
                                width: size.width * 0.4,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade100,
                                    borderRadius: BorderRadius.circular(8)),
                                child: TextField(
                                  controller: name,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.edit_calendar,
                                        color: Colors.black,
                                        size: 15,
                                      )),
                                )),
                            Container(
                                padding: const EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade100,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                height: size.height * 0.054,
                                width: size.width * 0.4,
                                alignment: Alignment.center,
                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  controller: age,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                    // isDense: true,
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.edit_calendar,color: Colors.black,size: 15,)
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: size.width * 0.32,
                    right: size.width * 0.32,
                    child: UserCard(userIcon:profilePic,)
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3),
                itemCount: userIcon.length,
                itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          profilePic = userIcon[index];
                        });
                      },
                      child: UserCard(
                        userIcon: userIcon[index],),
                    );
                  },),
            ),
            name.text.isNotEmpty && age.text.isNotEmpty ? Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.pink.shade700,
              child: SizedBox(
                height: size.height * 0.05,
                width: size.width * 0.5,
                child:
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomePage();
                    },));
                }, child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ):Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.pink.shade700,
              child: SizedBox(
                height: size.height * 0.05,
                width: size.width * 0.5,
                child: TextButton(onPressed: () {
                }, child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
            SizedBox(height: size.height * 0.03,)
          ],
        ),
      ),
    );
  }
}
