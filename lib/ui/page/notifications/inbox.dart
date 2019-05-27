import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/post_bloc.dart';
import 'package:flutter_uikit/model/post.dart';
import 'package:flutter_uikit/ui/page/login/login_two_page.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/label_icon.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InboxPage extends StatelessWidget {
  //column1
  Widget profileColumn(BuildContext context) {
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
    );
  }

  Widget profileColumn2(BuildContext context) {
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
                        "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg"),
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
                        "Neha",
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .apply(fontWeightDelta: 700),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Online 5 min ago",
                        style: Theme.of(context).textTheme.caption.apply(
                            fontFamily: UIData.ralewayFont, color: Colors.grey),
                      )
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
          Row(
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
                    Row(
                      children: <Widget>[
                        Text(
                          "His Fiat 500",
                        ),
                        SizedBox(width: 40),
                        Text(
                          "For your BMW i8",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/Shopping Details");
                          },
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/2017_Fiat_500_facelift.jpg/1920px-2017_Fiat_500_facelift.jpg",
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        SizedBox(width: 40),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/Product Details");
                          },
                          child: Image.network(
                            "https://images.autouncle.com/pt/car_images/medium_5b2da5b6-19aa-4d0c-ac93-6fa1c37380cc_bmw-i8-edrive-365cv.jpg",
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                    Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      RaisedButton(
                        shape: StadiumBorder(),
                        child: Text(
                          "Accept ",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.green,
                        onPressed: () {
                          acceptBox(context);
                        },
                      ),
                      SizedBox(width: 30),
                      RaisedButton(
                        shape: StadiumBorder(),
                        child: Text(
                          "Decline",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          declineBox(context);
                        },
                      )
                    ])
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget postCard2(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 10),
                  Text(
                    "Congratulations!!",
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .apply(fontWeightDelta: 800),
                  ),
                  SizedBox(height: 10),
                  Text("Your Mercedes AMG was bought by Jack!",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
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
        children: <Widget>[
          profileColumn(context),
          profileColumn2(context),
          postCard(context),
          postCard2(context)
        ],
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

void acceptBox(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("Confirm Action"),
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "Confirm Trade",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ]));

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void declineBox(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("Confirm Action"),
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "Decline Trade",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ]));

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
