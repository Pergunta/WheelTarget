import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/profile/profile_one_page.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';

class ProfileTwoPage extends StatelessWidget {
  Size deviceSize;

  Widget profileHeader() => Container(
        height: deviceSize.height / 4,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.redAccent,
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2779.png"),
                    ),
                  ),
                  Text(
                    "Chris Paul",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Text(
                    "Car Enthusiast",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  Widget imagesCard() => Container(
        height: deviceSize.height / 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Photos",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                ),
              ),
              Expanded(
                child: Card(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, i) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                              "https://images-na.ssl-images-amazon.com/images/I/81bNkM6hDnL._SX466_.jpg"),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  //column3
  Widget descColumn() => Container(
        height: deviceSize.height * 0.14,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              "GoldenState sucks",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ProfileTile(
                      title: "Phone",
                      subtitle: "+919876543210",
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ProfileTile(
                      title: "Email",
                      subtitle: "cp3@gmail.com",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget profileColumn(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2779.png"),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Chris Paul posted a vehicle",
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "25 mins ago",
                  )
                ],
              ),
            ))
          ],
        ),
      );

  Widget postCard(BuildContext context) => Container(
        width: double.infinity,
        height: deviceSize.height / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Vehicles for sale",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Product Details");
                  },
                  child: Image.network(
                    "https://images.autouncle.com/pt/car_images/medium_5b2da5b6-19aa-4d0c-ac93-6fa1c37380cc_bmw-i8-edrive-365cv.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: MaterialButton(
                    color: Colors.redAccent,
                    shape: StadiumBorder(),
                    highlightColor: Colors.transparent,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "ADD VEHICLE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/Shopping Sell");
                    }),
              ),
            ],
          ),
        ),
      );

  Widget bodyData(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            profileHeader(),
            CommonDivider(),
            descColumn(),
            CommonDivider(),
            MaterialButton(
                color: Colors.white,
                shape: StadiumBorder(),
                highlightColor: Colors.redAccent[80],
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 42.0),
                  child: Text(
                    "EDIT PROFILE",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25.0,
                        fontFamily: "WorkSansBold"),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/Edit Profile");
                }),
            CommonDivider(),
            //followColumn(deviceSize),
            accountColumn(),
            CommonDivider(),
            postCard(context),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return CommonScaffold(
      appTitle: "Profile",
      showDrawer: true,
      showFAB: false,
      actionFirstIcon: Icons.search,
      bodyData: bodyData(context),
    );
  }
}
