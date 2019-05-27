import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/post_bloc.dart';
import 'package:flutter_uikit/model/post.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/label_icon.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InboxPage extends StatelessWidget {
  //column1
  Widget profileColumn(BuildContext context){ return Card(
      elevation: 2.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/chat page");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/View Profile");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png"),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Jack",
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .apply(fontWeightDelta: 700),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Online Now",
                        style: Theme.of(context).textTheme.caption.apply(
                            fontFamily: UIData.ralewayFont,
                            color: Colors.green),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );}

  //column last
  Widget actionColumn(Post post) => FittedBox(
        fit: BoxFit.contain,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            LabelIcon(
              label: "${post.likesCount} Likes",
              icon: FontAwesomeIcons.solidThumbsUp,
              iconColor: Colors.green,
            ),
            LabelIcon(
              label: "${post.commentsCount} Comments",
              icon: FontAwesomeIcons.comment,
              iconColor: Colors.blue,
            ),
            Text(
              post.postTime,
              style: TextStyle(fontFamily: UIData.ralewayFont),
            )
          ],
        ),
      );

  //post cards
  Widget postCard(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/chat page");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/View Profile");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png"),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Trade Request from Jack",
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .apply(fontWeightDelta: 700),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  //allposts dropdown
  Widget bottomBar() => PreferredSize(
      preferredSize: Size(double.infinity, 50.0),
      child: Container(
          color: Colors.black,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "All Posts",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            ),
          )));

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        title: Text("Feed"),
        forceElevated: true,
        pinned: true,
        floating: true,
        //bottom: bottomBar(),
      );

  Widget bodyList(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: postCard(context),
          );
        }, childCount: 1),
      );

  Widget bodySliverList(BuildContext context) {
    PostBloc postBloc = PostBloc();
    return StreamBuilder<List<Post>>(
        stream: postBloc.postItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
                  slivers: <Widget>[
                    //appBar(),
                    postCard(context),
                  ],
                )
              : Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Inbox",
      showFAB: true,
      showDrawer: true,
      bodyData: Column(
        children: <Widget>[profileColumn(context),postCard(context)],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.bmw.com/en/bmw-models/techdata/Z4-M40i.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
