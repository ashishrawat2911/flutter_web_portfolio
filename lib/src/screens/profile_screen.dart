import 'dart:html' as html;

import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/blocs/navigation_bloc.dart';
import 'package:flutter_web_portfolio/src/widgets/autosize_text.dart';

import 'home_screen.dart';

class ProfileSection extends StatefulWidget {
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          html.window.open(
              "https://bitly.com/ashishrawatresume", "Ashish Rawat's Resume");
        },
        icon: Icon(Icons.assignment),
        label: Text("Resume"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: isSmallScreen(context)
                  ? displaySize.width / 2.5
                  : displaySize.width / 3.2,
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
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
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
                      width: displaySize.width,
                      child: AutoSizeText(
                        "Ashish Rawat",
                        style: TextStyle(fontSize: 40),
                      )),
                  Container(
                    width: displaySize.width,
                    child: AutoSizeText(
                      "Android and Fluttter Developer",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: displaySize.width / 1.1,
                    child: Text(
                      "A passionate and forward-thinking mobile application developer has experience of building, integrating, testing, and supporting mobile applications for mobile devices.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: displaySize.width / 3,
                    child: AutoSizeText(
                      "Social Profiles",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    childAspectRatio: 3,
                    padding: EdgeInsets.all(5),
                    children: <Widget>[
                      socialProfile(
                          imageUrl:
                              "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                          url: "https://github.com/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn1.iconfinder.com/data/icons/logotypes/32/square-linkedin-512.png",
                          url: "https://linkedin.com/in/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/facebook_circle-512.png",
                          url: "https://facebook.com/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://seeklogo.com/images/T/twitter-2012-negative-logo-5C6C1F1521-seeklogo.com.png",
                          url: "https://twitter.com/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn-images-1.medium.com/max/1600/1*emiGsBgJu2KHWyjluhKXQw.png",
                          url: "https://medium.com/@ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-instagram-new-circle-512.png",
                          url: "https://instagram.com/ashishrawat2911",
                          context: context),
                    ],
                    crossAxisCount: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween
                       ,
                    children: <Widget>[
                      Container(
                        width: displaySize.width / 3,
                        child: AutoSizeText(
                          "Blogs",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      FloatingActionButton.extended(
                        onPressed: () {
                          navigationDrawerBloc
                              .updateNavigation(NavigationScreen.Blog);
                        },
                        label: Text("Read All"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                       ,
                    children: <Widget>[
                      Container(
                        width: displaySize.width / 3,
                        child: AutoSizeText(
                          "Talks",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      FloatingActionButton.extended(
                        onPressed: () { navigationDrawerBloc
                            .updateNavigation(NavigationScreen.Talks);},
                        label: Text("Read All"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Built with ❤️ in Flutter",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Widget socialProfile({String imageUrl, String url, BuildContext context}) {
    return GestureDetector(
        onTap: () {
          html.window.open(url, "");
        },
        child: Image.network(
          imageUrl,
        ));
  }
}
