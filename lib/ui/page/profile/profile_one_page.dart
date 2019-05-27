import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/shopping/image_picker_handler2.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileOnePage extends StatefulWidget {

  var deviceSize;
  //Column1
  Widget profileColumn(BuildContext context) => Container(
        height: deviceSize.height * 0.24,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Jack",
                  subtitle: "Car Nut",
                  textColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.message),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () =>{ Navigator.pushNamed(
                                         context, "/chat page")},
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(40.0)),
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png"),
                          foregroundColor: Colors.white,
                          radius: 30.0,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () => launch("tel://911231113"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  //column2


  //column3
  Widget descColumn() => Container(
        height: deviceSize.height * 0.14,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              " A fan clutch is a thermostatic engine cooling fan that can freewheel at low temperatures when cooling is not needed, allowing the engine to warm up faster, relieving unnecessary load on the engine.",
              style: TextStyle(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 10,
              softWrap: true,
            ),
          ),
        ),
      );
  //column4
  Widget accountColumn() => FittedBox(
        fit: BoxFit.fill,
        child: Container(
          height: deviceSize.height * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ProfileTile(
                      title: "Website",
                      subtitle: "about.me/imtheclutch",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ProfileTile(
                      title: "Phone",
                      subtitle: "+919876543210",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ProfileTile(
                      title: "Location",
                      subtitle: "California",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ProfileTile(
                      title: "Email",
                      subtitle: "imtheclutch@gmail.com",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ProfileTile(
                      title: "Facebook",
                      subtitle: "fb.com/imtheclutch",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget bodyData(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          profileColumn(context),
          CommonDivider(),
          followColumn(deviceSize),
          CommonDivider(),
          descColumn(),
          CommonDivider(),
          accountColumn(),
          CommonDivider(),
       
        ],
      ),
    );
  }

  Widget _scaffold(BuildContext context) => CommonScaffold(
        appTitle: "View Profile",
        bodyData: bodyData(context),
        showFAB: true,
        showDrawer: true,
        floatingIcon: Icons.person_add,
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold(context);
  }
}

Widget followColumn(Size deviceSize) => Container(
      height: deviceSize.height * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ProfileTile(
            title: "1.5K",
            subtitle: "Posts",
          ),
          ProfileTile(
            title: "2.5M",
            subtitle: "Followers",
          ),
          ProfileTile(
            title: "10K",
            subtitle: "Comments",
          ),
          ProfileTile(
            title: "1.2K",
            subtitle: "Following",
          )
        ],
      ),
    );
