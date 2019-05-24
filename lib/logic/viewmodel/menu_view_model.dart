import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/menu.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "Profile",
          menuColor: Color(0xff050505),
          icon: Icons.person,
          image: UIData.profileImage,
          items: ["My Profile"]),
      Menu(
          title: "Shopping",
          menuColor: Color(0xffc8c4bd),
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage,
          items: [
            "Shopping List",
            "Shopping Details",
            "Product Details",
          ]),
      Menu(
          title: "Forum",
          menuColor: Color(0xff7f5741),
          icon: Icons.timeline,
          image: UIData.timelineImage,
          items: ["Feed", "Tweets", "Timeline 3", "Timeline 4"]),
      Menu(
          title: "Payment Options",
          menuColor: Color(0xffddcec2),
          icon: Icons.payment,
          image: UIData.paymentImage,
          items: ["Credit Card", "Payment Success", "Payment 3", "Payment 4"]),
      Menu(
          title: "Help",
          menuColor: Color(0xff7f5741),
          icon: Icons.help,
          image: UIData.helpImage,
          items: ["Help"]),
      Menu(
          title: "Logout",
          menuColor: Color(0xff7f5741),
          icon: Icons.arrow_forward_ios,
          image: UIData.logoutImage,
          items: ["Login 2"]),
    ];
  }
}
