import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/cart_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/custom_float.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingAction extends StatefulWidget {
  ShoppingAction();

  @override
  ShoppingActionState createState() {
    return new ShoppingActionState();
  }
}

class ShoppingActionState extends State<ShoppingAction> {
  String _value = "Cyan";
  String _sizeValue = "M";

  Widget colorsCard() => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Contacts",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Phone Number: ",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.redAccent),
                ),
                Text(
                  "999-666-333",
                  style:
                      TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Email: ",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.redAccent),
                ),
                Text(
                  "tempmail@gmail.com",
                  style:
                      TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        colorsCard(),
      ],
    );
  }
}
