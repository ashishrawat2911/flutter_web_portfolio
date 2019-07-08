import 'package:flutter_web/material.dart';

import '../../autosize_text.dart';
import '../../main.dart';
import 'home_screen.dart';

class ProfileSection extends StatefulWidget {
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: isSmallScreen(context)
              ? displaySize.width / 2.5
              : displaySize.width / 3,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Image.network(
                "https://pbs.twimg.com/profile_banners/3015219910/1559145714/1500x500",
                width: displaySize.width,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: isSmallScreen(context)
                    ? displaySize.width / 4
                    : displaySize.width / 6.5,
                child: Container(
                  margin: EdgeInsets.only(left: 8.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(displaySize.width < 800 ? 0 : 50),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(displaySize.width < 800 ? 0 : 50),
                    child: Image.network(
                      "https://pbs.twimg.com/profile_images/1134399234722205697/BGdG0J4G_400x400.png",
                      width: displaySize.width / 7,
                      height: displaySize.width / 7,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: displaySize.width / 3,
                  child: AutoSizeText(
                    "Ashish Rawat",
                    style: TextStyle(fontSize: 40),
                  )),
              Container(
                width: displaySize.width / 3,
                child: AutoSizeText(
                  "Android and Fluttter Developer",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                width: displaySize.width / 1.1,
                child: AutoSizeText(
                  "A passionate and forward-thinking mobile application developer has experience of building, integrating, testing, and supporting Android applications for mobile devices on the Android platform. ",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
