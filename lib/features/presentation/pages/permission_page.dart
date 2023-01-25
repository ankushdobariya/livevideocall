import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/componenets/permission/permission_card.dart';
import 'package:livevideocall/features/presentation/pages/componenets/permission/permisson_granted.dart';
import 'package:livevideocall/features/presentation/pages/set_profile_page.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {


  bool permission1 = false;
  bool permission2 = false;
  bool permission3 = false;
  bool permission4 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: size.height * 0.08,
              width: size.width,

              decoration: BoxDecoration(
                  color: Colors.black,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: Column(

                children: const [
                  Spacer(flex: 3,),
                  Text("Thanks For Installing Video Call",style: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("To Continue, Please Provide the Following Permission",style: TextStyle(color: Colors.white,fontSize: 12),),
                  Spacer(flex: 3,),

                ],
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            permission1 == false ? PermissionCard(
              grantPermisson: () {
                setState(() {
                  permission1 = true;
                });
              },permission: "Camera Permission",subTitle: "To Allow Take Picture and video",):
                const PermissonGranted(permission: "Camera Permission", subTitle: "To Allow Take Picture and video"),
            SizedBox(height: size.height * 0.01,),
            permission2 == false ? PermissionCard(
              grantPermisson: () {
                setState(() {
                  permission2 = true;
                });
              },permission: "Audio Permission",subTitle: "To Allow Take Picture and video",):
            const PermissonGranted(permission: "Camera Permission", subTitle: "To Allow Take Picture and video"),
            SizedBox(height: size.height * 0.01,),
            permission3 == false ? PermissionCard(grantPermisson: () {
              setState(() {
                permission3 = true;
              });
            },permission: "Storage Permission",subTitle: "To Allow Take Picture and video",):
            const PermissonGranted(permission: "Camera Permission", subTitle: "To Allow Take Picture and video"),
            SizedBox(height: size.height * 0.01,),
            permission4 == false ? PermissionCard(
              grantPermisson: () {
              setState(() {
                permission4 = true;
              });
            },permission: "Gallery Permission",subTitle: "To Allow Take Picture and video",):
            const PermissonGranted(permission: "Camera Permission", subTitle: "To Allow Take Picture and video"),
            SizedBox(height: size.height * 0.01,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.black,
              child: SizedBox(
                height: size.height * 0.05,
                width: size.width * 0.5,
                child: permission1 == false || permission2 == false|| permission3 == false|| permission4 == false ?
                TextButton(onPressed: () {
                  setState(() {
                    permission1 = true;
                    permission2 = true;
                    permission3 = true;
                    permission4 = true;
                  });
                }, child: const Text("START",style: TextStyle(color: Colors.white,fontSize: 15),)):
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SetProfilePage();
                  },));
                }, child: const Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
