import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/models/talk_model.dart';
import 'package:flutter_web_portfolio/src/widgets/autosize_text.dart';

import 'home_screen.dart';

class TalksScreen extends StatefulWidget {
  @override
  _TalksScreenState createState() => _TalksScreenState();
}

class _TalksScreenState extends State<TalksScreen> {
  List<TalkModel> blogList = List<TalkModel>();

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
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isSmallScreen(context)
                  ? Container()
                  : AutoSizeText(
                      "Talks by Ashish Rawat",
                      style: TextStyle(fontSize: 40),
                    ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: displaySize.width < 1200 ? 2 : 3,
              crossAxisSpacing: 10,
              childAspectRatio: isSmallScreen(context)?0.9: 1.2,
              padding: EdgeInsets.all(5),
              children: <Widget>[
                ...List<Widget>.generate(blogList.length, (int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: displaySize.width / 2,
                            child: AutoSizeText(
                              blogList[index].topic,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            width: displaySize.width / 2,
                            child: AutoSizeText(
                              "at",

                              overflow: TextOverflow.clip,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Container(
                            width: displaySize.width / 2,
                            child: AutoSizeText(
                              blogList[index].name,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Image.network(blogList[index].image),
                        ],
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
    blogList.add(
      TalkModel(
        "Google I/O Extended New Delhi",
        "https://media.licdn.com/dms/image/C5122AQEpaix_QhsAUg/feedshare-shrink_8192/0?e=1565222400&v=beta&t=TBNUp-GSAyxB3uJ95mU5OAtbkUBNVPCgLvPTG2lHRZg",
        "Flutter Beyond Mobile",
      ),
    );
  }
}
