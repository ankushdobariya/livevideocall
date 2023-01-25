import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.userIcon}) : super(key: key);

  final String userIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      child: Container(
          height: size.height * 0.13,
          width: size.height * 0.13,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              color: Colors.orange.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image: AssetImage(userIcon),fit: BoxFit.cover

                      )

                    ),
                     )),
            ),
          )),
    );
  }
}
