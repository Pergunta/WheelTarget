import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_details/shopping_action.dart';
import 'package:flutter_uikit/ui/widgets/label_icon.dart';

import '../image_picker_handler2.dart';

// class ShoppingWidgets extends StatelessWidget {

//   Size deviceSize;
//   final Product product;
//   final BuildContext context;

//   ShoppingWidgets({Key key, this.product, this.context}) : super(key: key);
  Size deviceSize;
class ShoppingWidgets extends StatefulWidget {

  ShoppingWidgets({Key key, this.product, this.context, this.title})
      : super(key: key);
  final String title;
  Size deviceSize;
  final Product product;
  final BuildContext context;
  @override
  _ShoppingWidgetsState createState() => new _ShoppingWidgetsState();
}

class _ShoppingWidgetsState extends State<ShoppingWidgets>
    with TickerProviderStateMixin, ImagePickerListener {
  AnimationController _controller;
  ImagePickerHandler2 imagePicker;
  Widget mainCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Fiat",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    RaisedButton(
                      shape: StadiumBorder(),
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, "/Payment Success");
                      },
                      child: Text('Buy Now',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "500",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.0),
                    ),
                    RaisedButton(
                      shape: StadiumBorder(),
                      color: Colors.grey[100],
                      onPressed: () => imagePicker.showDialog(context),
                      child: Text('Request Trade',
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 20)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/View Profile");
                      },
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png"),
                      ),
                    ),
                    Text(
                      "£20,000",
                      style: TextStyle(
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Widget imagesCard() => SizedBox(
        height: deviceSize.height / 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Card(
            elevation: 2.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/2017_Fiat_500_facelift.jpg/1920px-2017_Fiat_500_facelift.jpg"),
                  ),
            ),
          ),
        ),
      );

  Widget descCard() => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Diesel, Manual, 1300cm3 90cv , 02/2010 40,252km",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      );

  Widget actionCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShoppingAction()),
        ),
      );
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: deviceSize.height / 4,
          ),
          mainCard(),
          imagesCard(),
          descCard(),
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    imagePicker = new ImagePickerHandler2(this, _controller);
    imagePicker.init();
  }
  @override
  userImage(File _image) {
    // TODO: implement userImage
    return null;
  }
}
