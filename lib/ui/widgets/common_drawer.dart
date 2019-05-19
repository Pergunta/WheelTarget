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
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new AssetImage(UIData.pkImage),
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
            onTap: (){
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
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(
              context, "/My Profile");},
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
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(
              context, "/Shopping List");},
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
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(
              context, "/Feed");},
              ),
          Divider(),
          SizedBox(
            height: 100.0,
          ),
          MyAboutTile()
        ],
      ),
    );
  }
}
