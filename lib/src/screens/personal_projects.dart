import 'dart:html' as html;

import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/models/blog_model.dart';
import 'package:flutter_web_portfolio/src/widgets/autosize_text.dart';

import 'home_screen.dart';

class PersonalProjects extends StatefulWidget {
  @override
  _PersonalProjectsState createState() => _PersonalProjectsState();
}

class _PersonalProjectsState extends State<PersonalProjects> {
  List<BlogModel> blogList = List<BlogModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateList();
  }

  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: displaySize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isSmallScreen(context)
                  ? Container()
                  : AutoSizeText(
                      "Personal Projects by Ashish Rawat",
                      style: TextStyle(fontSize: 40),
                    ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: displaySize.width < 1200 ? 2 : 3,
              crossAxisSpacing: 10,
              childAspectRatio:isSmallScreen(context)?0.9: 1.3,
              padding: EdgeInsets.all(5),
              children: <Widget>[
                ...List<Widget>.generate(blogList.length, (int index) {
                  return GestureDetector(
                    onTap: () {
                      html.window
                          .open(blogList[index].link, blogList[index].name);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: displaySize.width / 2,
                              child: AutoSizeText(
                                blogList[index].name,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            Image.network(blogList[index].image),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }

  void generateList() {
    blogList.add(BlogModel(
        "Movie Time",
        "https://lh3.googleusercontent.com/0SeQhdfj6r6WoFMUyHSqAPQjs-ypwp5jnyjeROC5cTtSHjpcMIhp0NeVWw7dzxRWACIv=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.movietime"));
    blogList.add(BlogModel(
        "News Web",
        "https://lh3.googleusercontent.com/trIn-8zRZNY_3J9vtYv9TxzIHig47yGBQtuih_mV_z_ul-O6N4fST_H9QqCVSfyLzcY=s180-rw",
        "https://play.google.com/store/apps/details?id=com.rawat.ashish.newsweb"));
  }
}
