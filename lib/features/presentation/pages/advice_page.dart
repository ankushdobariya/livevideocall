import 'package:flutter/material.dart';

class AdvicePage extends StatefulWidget {
  const AdvicePage({Key? key}) : super(key: key);

  @override
  State<AdvicePage> createState() => _AdvicePageState();
}

class _AdvicePageState extends State<AdvicePage> {

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
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: const Text("Global Call",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Body Language",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with strangers Live Video Call Advice & connecting with ",
              style: TextStyle(color: Colors.black, fontSize: 16),

            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Advice For Video Call",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Live Video Call Advice & connecting with strangers",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              height: size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const AdvicePage();
                        },
                      ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: size.height * 0.15,
                      width: size.width * 0.27,
                      decoration: BoxDecoration(
                        color: color[index],
                        borderRadius: BorderRadius.circular(8),
                        image:  DecorationImage(
                          image: NetworkImage(imageUrl[index],),fit: BoxFit.cover
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            title[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Text(
                            subTitle[index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 9),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
