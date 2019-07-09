import 'dart:html' as html;

import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/models/blog_model.dart';
import 'package:flutter_web_portfolio/src/widgets/autosize_text.dart';

import 'home_screen.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: isSmallScreen(context)
                ? Container()
                : AutoSizeText(
                    "Blogs by Ashish Rawat",
                    style: TextStyle(fontSize: 40),
                  ),
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: displaySize.width < 1200 ? 2 : 3,
            crossAxisSpacing: 10,
            childAspectRatio:isSmallScreen(context)?1: 1.3,
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
                            width: displaySize.width / 2,
                            child: AutoSizeText(
                              blogList[index].name,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
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
      BlogModel(
          "Managing the state of a Widget using bloc | Flutter",
          "https://cdn-images-1.medium.com/max/800/1*_zYRS_PltGA2o-2Rtd5fYQ.png",
          "https://medium.com/flutterdevs/managing-the-state-of-a-widget-using-bloc-flutter-7789d6017f6b"),
    );
    blogList.add(
      BlogModel(
          "Using MVVM |Android Jetpack",
          "https://cdn-images-1.medium.com/max/1200/1*4KTWMiUwN1GAhhT27V7pjw.png",
          "https://medium.com/mindorks/using-mvvm-android-jetpack-ebf1d9c1477c"),
    );
    blogList.add(
      BlogModel(
          "Data Persistence with SQLite | Flutter",
          "https://cdn-images-1.medium.com/max/800/1*GjB48IWvbZfELLSog7zrpA.png",
          "https://medium.com/flutterdevs/data-persistence-with-sqlite-flutter-47a6f67b973f"),
    );
    blogList.add(
      BlogModel(
          "Using ViewModel with RoomDatabase | Android Jetpack",
          "https://cdn-images-1.medium.com/max/1200/1*NAz43gf-zEaIzGO4XAmLjA.png",
          "https://medium.com/mindorks/using-view-model-with-roomdatabase-95b790a9a66c"),
    );
    blogList.add(
      BlogModel(
          "Using Room Database with LiveData | Android Jetpack",
          "https://cdn-images-1.medium.com/max/800/1*YKfnrFdzXMgh6vv4heiGgA.png",
          "https://medium.com/mindorks/using-room-database-with-livedata-android-jetpack-cbf89b677b47"),
    );
    blogList.add(
      BlogModel(
        "Using Room Database | Android Jetpack",
        "https://cdn-images-1.medium.com/max/800/1*-OboqZDfl9-XTT8XA-b0cA.png",
        "https://medium.com/mindorks/using-room-database-android-jetpack-675a89a0e942",
      ),
    );
    blogList.add(
      BlogModel(
        "Know Your Widgets: Container in Flutter",
        "https://cdn-images-1.medium.com/max/800/1*uzX1HGrng58Oa4geMAcuEw.png",
        "https://medium.com/flutterdevs/know-your-widgets-container-in-flutter-330983df34d3",
      ),
    );
    blogList.add(
      BlogModel(
        "Cupertino (iOS-style) ActionSheet in Flutter | Know Your Widgets",
        "https://cdn-images-1.medium.com/max/800/1*4vcXR_1bBiXc_bmiri4g5Q.png",
        "https://medium.com/flutterdevs/know-your-widgets-1-cupertino-ios-style-actionsheet-in-flutter-e6d7d8dfb437",
      ),
    );
    blogList.add(
      BlogModel(
        "Creating a Flutter Plugin | Dialog Box",
        "https://cdn-images-1.medium.com/max/800/1*WtVPadgL5LWq-YnUT0cXNQ.png",
        "https://medium.com/flutter-community/creating-a-flutter-plugin-dialog-box-78adbff15fe",
      ),
    );
    blogList.add(
      BlogModel(
        "Parsing JSON in Flutter",
        "https://cdn-images-1.medium.com/max/800/1*1X1WfrlV2yaEXbvV1BJEXg.png",
        "https://medium.com/flutterdevs/parsing-complex-json-in-flutter-b7f991611d3e",
      ),
    );
    blogList.add(
      BlogModel(
        "Using ViewModel | Android Jetpack",
        "https://cdn-images-1.medium.com/max/1200/1*sgte14nnEGB1cwlDbjbBrw.png",
        "https://android.jlelse.eu/using-viewmodel-android-jetpack-2a6325c79c59",
      ),
    );
    blogList.add(
      BlogModel(
        "Navigation Drawer using Flutter",
        "https://cdn-images-1.medium.com/max/800/1*NeUg-w9N1Y8361YoJgPqow.png",
        "https://medium.com/flutterpub/navigation-drawer-using-flutter-cc8a5cfcab90",
      ),
    );
  }
}
