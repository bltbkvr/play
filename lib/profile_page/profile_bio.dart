import 'package:flutter/material.dart';
import 'package:play/profile_page/background_image.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 150,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage('https://picsum.photos/200'),
            )),
        Positioned(
          top: 100,
          left: 0,
          height: 100,
          width: 130,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: CircleAvatar(
                radius: 46,
                backgroundImage: NetworkImage('https://picsum.photos/300')),
          ),
        ),
        Positioned(
          top: 200,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Elon Musk",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "@elonmusk",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "State-Affiliated Media",
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.calendar_month,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Joined June 2009",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "167 ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Following   "),
                    Text(
                      "127M ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Followers"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Not followed by anyone you're following",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 160,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: Text("Follow"),
            onPressed: (() => print("")),
          ),
        ),
      ],
    );
  }
}
