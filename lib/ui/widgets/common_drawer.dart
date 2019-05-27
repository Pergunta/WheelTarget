import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/about_tile.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Chris Paul",
            ),
            accountEmail: Text(
              "chrispaul_123@gmail.com",
            ),
            currentAccountPicture: new Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(width: 2.0, color: Colors.white)),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2779.png"),
              ),
            ),
          ),
          new ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          new ListTile(
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/My Profile");
            },
          ),
          new ListTile(
            title: Text(
              "Shopping",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Buy Sell");
            },
          ),
          new ListTile(
            title: Text(
              "News Feed",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.list,
              color: Colors.cyan,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Feed");
            },
          ),
          new ListTile(
            title: Text(
              "Inbox",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: new Stack(children: <Widget>[
              new Icon(
                Icons.mail,
                color: Colors.orangeAccent[100],
              ),
              new Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: new Icon(Icons.brightness_1,
                    size: 10.0, color: Colors.redAccent),
              )
            ]),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Inbox");
            },
          ),
          Divider(),
          new ListTile(
            title: Text(
              "Logout",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Login 2");
            },
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          MyAboutTile()
        ],
      ),
    );
  }
}
