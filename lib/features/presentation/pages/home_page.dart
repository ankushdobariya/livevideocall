import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/advice_page.dart';
import 'package:livevideocall/features/presentation/pages/componenets/room_card.dart';
import 'package:livevideocall/features/presentation/pages/gender_select_page.dart';
import 'package:livevideocall/features/presentation/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> color = [
    Colors.black,
    Colors.yellow,
    Colors.pink,
    Colors.blue,
    Colors.brown,
    Colors.grey,
    Colors.green,
    Colors.purple
  ];
  List title = [
    "Dress",
    "Fill Your Face",
    " Raise Your",
    " Find a quite",
    "Choose a neutral",
    "Cheak Your",
    "Body",
    "Keep clear of"
  ];
  List subTitle = [
    "Appropriately",
    "with Light",
    "Camera",
    "Place",
    "Background",
    "Tech",
    "Language",
    "Distance"
  ];
  List imageUrl = [
    "https://images.pexels.com/photos/3348748/pexels-photo-3348748.jpeg",
    "https://images.pexels.com/photos/3812944/pexels-photo-3812944.jpeg",
    "https://images.pexels.com/photos/2100063/pexels-photo-2100063.jpeg",
    "https://images.pexels.com/photos/3228213/pexels-photo-3228213.jpeg",
    "https://images.pexels.com/photos/1385472/pexels-photo-1385472.jpeg",
    "https://images.pexels.com/photos/4725133/pexels-photo-4725133.jpeg",
    "https://images.pexels.com/photos/3348748/pexels-photo-3348748.jpeg",
    "https://images.pexels.com/photos/3812944/pexels-photo-3812944.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: const Text(
          "Global Call",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ProfilePage();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 28,
                )),
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children: const [

                Icon(Icons.video_camera_front_rounded,color: Colors.black,size: 20,),
                Spacer(),
                Text("Video Call",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("Connect on VideoChat With Strangers",style:TextStyle(color: Colors.black,fontSize: 10),),
                Spacer(flex: 10,),
              ],
            ),
            SizedBox(height: size.height * 0.01,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.blue,
                    roomNo: "Room No.1",
                    roomCategory: "Stranger Video Call",
                    image: "https://files.oyebesmartest.com/uploads/preview/indian-girl-model-photography-photoshoot-hd--(8)wywjkvmzrd.jpg"),
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.pink,
                    roomNo: "Room No.2",
                    roomCategory: "Only Girls",
                    image: "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5377.jpg?w=2000",),
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.yellow,
                    roomNo: "Room No.3",
                    roomCategory: "Only Boys",
                    image: "https://funkylife.in/wp-content/uploads/2022/09/girl-dp-image-217.jpg"),
              ],
            ),
            SizedBox(height: size.height * 0.03,),
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children: const [

                Icon(Icons.video_camera_front_rounded,color: Colors.black,size: 20,),
                Spacer(),
                Text("Audio Call",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("Make High quelity audio call With Strangers",style:TextStyle(color: Colors.black,fontSize: 10),),
                Spacer(flex: 10,),
              ],
            ),
            SizedBox(height: size.height * 0.01,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.blue,
                    roomNo: "Room No.1",
                    roomCategory: "Stranger Video Call",
                    image:"https://i.pinimg.com/736x/1e/44/42/1e4442e91d34cd6675d9029364599a97.jpg"),
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.pink,
                    roomNo: "Room No.2",
                    roomCategory: "Only Girls",
                    image: "http://www.goodmorningimagesdownload.com/wp-content/uploads/2020/03/Stylish-Girls-Whatsapp-DP-Images-23.jpg"),
                RoomCard(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GenderSelectPage();
                    },));
                  },
                    bgColor: Colors.yellow,
                    roomNo: "Room No.3",
                    roomCategory: "Only Boys",
                    image: "https://1.bp.blogspot.com/-vTIxVxOOGJQ/YSNJD9y1wBI/AAAAAAAASVo/4Z2R8CRqfEgBCOBn0kaftHbDUl01UyOrACLcBGAsYHQ/s564/Girl-attitude-dp-images%2B%25281%2529.jpg"),
              ],
            ),
            SizedBox(height: size.height * 0.03,),
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children: const [

                Icon(Icons.video_camera_front_rounded,color: Colors.black,size: 20,),
                Spacer(),
                Text("Advice For Video Call",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("Video Call Advice for Strangers",style:TextStyle(color: Colors.black,fontSize: 10),),
                Spacer(flex: 10,),
              ],
            ),
            SizedBox(
              height: size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const AdvicePage();
                    },));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: size.height * 0.15,
                    width: size.width * 0.27,
                    decoration: BoxDecoration(
                      color:color[index],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl[index],),fit: BoxFit.cover
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(title[index],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                        Text(subTitle[index],style: const TextStyle(color: Colors.white,fontSize: 9),),
                        SizedBox(height: size.height * 0.01,)
                      ],
                    ),
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
