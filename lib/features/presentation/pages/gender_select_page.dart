import 'package:flutter/material.dart';

class GenderSelectPage extends StatefulWidget {
  const GenderSelectPage({Key? key}) : super(key: key);

  @override
  State<GenderSelectPage> createState() => _GenderSelectPageState();
}

class _GenderSelectPageState extends State<GenderSelectPage> {

  bool border = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.pink])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      border = true;
                    });
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          border:border == true ? Border.all(color: Colors.red,width: 3):Border.all(color: Colors.white,width: 3)
                      ),
                      height: size.width * 0.4,
                      width: size.width * 0.4,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding:  EdgeInsets.all(3.0),
                              child: Container(
                                  height: size.height * 0.11,
                                  width: size.height * 0.11,
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: AssetImage("image/Girl.png")
                                    ),

                                  ),
                                  ),
                            ),
                          ),
                          const Text("I am Male",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      border = false;
                    });
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: size.width * 0.4,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:border == false ? Border.all(color: Colors.green,width: 3):Border.all(color: Colors.white,width: 3)
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding:  const EdgeInsets.all(3.0),
                              child: Container(
                                height: size.height * 0.11,
                                width: size.height * 0.11,
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade50,
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                        image: AssetImage("image/Girl.png")
                                    )
                                ),
                              ),
                            ),
                          ),
                          const Text("I am Female",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Card(
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
                  Navigator.pop(context);
                }, child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
