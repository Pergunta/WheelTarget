import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/custom_float.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class CommonScaffold extends StatelessWidget {
  final appTitle;
  final Widget bodyData;
  final showFAB;
  final showDrawer;
  final backGroundColor;
  final actionFirstIcon;
  final scaffoldKey;
  final showBottomNav;
  final floatingIcon;
  final centerDocked;
  final elevation;
  final context;

  CommonScaffold(
      {this.context,
      this.appTitle,
      this.bodyData,
      this.showFAB = false,
      this.showDrawer = false,
      this.backGroundColor,
      this.actionFirstIcon = Icons.search,
      this.scaffoldKey,
      this.showBottomNav = false,
      this.centerDocked = false,
      this.floatingIcon,
      this.elevation = 4.0});

  Widget myBottomBar() => BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Ink(
          height: 50.0,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(colors: UIData.kitGradients)),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey != null ? scaffoldKey : null,
      backgroundColor: backGroundColor != null ? backGroundColor : null,
      appBar: AppBar(
        elevation: elevation,
        backgroundColor: Colors.black,
        title: Text(appTitle),
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(actionFirstIcon),
          )
        ],
      ),
      drawer: showDrawer ? CommonDrawer() : null,
      body: bodyData,

      //bottomNavigationBar: showBottomNav ? myBottomBar() : null,
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final search = ["fiat 500", "jack", "hyundai review"];

  final recentSearch = ["fiat 500", "jack"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return AlertDialog(
      title: Text("OOPS!"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('No Results Found!'),
          RaisedButton(
            padding: EdgeInsets.all(1.0),
            shape: StadiumBorder(),
            child: Text(
              "Go Back",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.redAccent,
            onPressed: () {Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearch
        : search.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              if (suggestionList[index] == "fiat 500") {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/Shopping Details");
              } else if (suggestionList[index] == "jack") {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/View Profile");
              } else {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/Feed");
              }
            },
            leading: Icon(Icons.arrow_right),
            title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          ),
    );
  }
}
