import 'dart:html' as html;

import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/models/blog_model.dart';

import 'package:flutter_web_portfolio/src/widgets/autosize_text.dart';

class Blogs extends StatefulWidget {
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            "Blogs by Ashish rawat",
            style: TextStyle(fontSize: 40),
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: displaySize.width < 1200 ? 2 : 3,
            crossAxisSpacing: 10,
            childAspectRatio: 1.3,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: displaySize.width / 3,
                            child: AutoSizeText(
                              blogList[index].name,
                              style: TextStyle(fontSize: 20),
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
    );
  }

  generateList() {
    blogList.add(BlogModel(
        "Bottom Navigation Bar using Provider Flutter",
        "https://miro.medium.com/max/1000/1*kQVKvFSFhWpRPBPVBFNPfg.png",
        "https://medium.com/flutterdevs/bottom-navigation-bar-using-provider-flutter-8b607beb2e5a"));
    blogList.add(BlogModel(
        "Managing the state of a Widget using Provider Flutter",
        "https://miro.medium.com/max/1000/1*BPVpmqqBaOoc5UbQJ-ZWUA.png",
        "https://medium.com/flutterdevs/managing-the-state-of-a-widget-using-provider-flutter-6b5090f18875"));
    blogList.add(BlogModel(
        "Using SharedPreferences in Flutter",
        "https://miro.medium.com/max/700/1*d7_x3XnsC6FJXNHNx_seQg.png",
        "https://medium.com/flutterdevs/using-sharedpreferences-in-flutter-251755f07127"));
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
    blogList.add(
      BlogModel("", "", ""),
    );
  }
}
