import 'package:flutter_web/material.dart';

import 'autosize_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileSection(),
    );
  }
}

class ProfileSection extends StatefulWidget {
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width / 2.5,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Image.network(
                "https://pbs.twimg.com/profile_banners/3015219910/1559145714/1500x500",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: MediaQuery.of(context).size.width / 4,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://pbs.twimg.com/profile_images/1134399234722205697/BGdG0J4G_400x400.png",
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.width / 7,
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
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: AutoSizeText(
                    "Ashish Rawat",
                    style: TextStyle(fontSize: 40),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: AutoSizeText(
                    "Android and Fluttter Developer",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
