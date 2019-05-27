import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/product_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';

class CollectionTrade extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return CommonScaffold(
        scaffoldKey: scaffoldKey,
        appTitle: "Shopping",
        showDrawer: true,
        showFAB: false,
        actionFirstIcon: Icons.search,
        bodyData: Container(child: bodyGrid(context)));
  }

  Widget bodyGrid(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment(0.0, 0.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Shopping List");
              },
              color: Colors.redAccent[100],
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 82.0, horizontal: 22.0),
                child: Text(
                  "BUY",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: "WorkSansBold"),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Shopping Sell");
              },
              color: Colors.redAccent[100],
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 82.0, horizontal: 22.0),
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: "WorkSansBold"),
                ),
              ),
            ),
          ),
        ],
      );

  Widget menuImage(String image) => Image.asset(
        image,
        fit: BoxFit.cover,
      );

  //stack 2/3
  Widget menuColor() => new Container(
        height: 200,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 5.0,
          ),
        ]),
      );

  //stack 3/3
  Widget menuData(String text) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      );
}
