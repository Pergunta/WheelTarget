import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/product.dart';

class ProductDesc extends StatelessWidget {
  final Product product;

  const ProductDesc({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: new ListTile(
              title: new Text(
                product.name,
                style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: new Text(
                product.brand,
                style: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              trailing: new Text(product.price + "£",
                  style: new TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
          ),
          new SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(product.fuel,
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.left),
                Text(product.date,
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.left),
                Text(product.km,
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.left),
              ],
            ),
          ),
          new SizedBox(
            height: 30.0,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                  color: Colors.white,
                  shape: StadiumBorder(),
                  highlightColor: Colors.redAccent[80],
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      "EDIT VEHICLE",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                          fontFamily: "WorkSansBold"),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Edit Vehicle");
                  }),
              MaterialButton(
                  color: Colors.red,
                  shape: StadiumBorder(),
                  highlightColor: Colors.redAccent[80],
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      "REMOVE VEHICLE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "WorkSansBold"),
                    ),
                  ),
                  onPressed: () {
                    confirmationBox(context);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

void confirmationBox(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("CONFIRMATION!"),
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text('Permanently remove vehicle'),
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "REMOVE",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          onPressed: () {
            retrievalBox(context);
          },
        ),
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "CANCEL",
            style: TextStyle(color: Colors.redAccent),
          ),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ]));

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void retrievalBox(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("SUCCESS!"),
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text('Vehicle removed'),
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "RETURN",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/My Profile'));
          },
        )
      ]));

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
