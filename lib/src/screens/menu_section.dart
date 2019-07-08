import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/blocs/navigation_bloc.dart';

class MenuSection extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  MenuSection(this.scaffoldKey);

  @override
  _MenuSectionState createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.person),
            onTap: () {
              navigationDrawerBloc.updateNavigation(NavigationScreen.Profile);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
          ),
          ListTile(
            title: Text(
              "Personal Projects",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Blogs",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.person),
            onTap: () {
              navigationDrawerBloc.updateNavigation(NavigationScreen.Blog);
              if (widget.scaffoldKey.currentState.isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }
}
