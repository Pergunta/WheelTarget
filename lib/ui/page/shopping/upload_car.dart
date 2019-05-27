import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/shopping/image_picker_handler.dart';
import 'package:flutter_uikit/ui/page/shopping/image_picker_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

final FocusNode myFocusNodeEmailLogin = FocusNode();
final FocusNode myFocusNodePasswordLogin = FocusNode();

final FocusNode myFocusNodePassword = FocusNode();
final FocusNode myFocusNodeEmail = FocusNode();
final FocusNode myFocusNodeName = FocusNode();

TextEditingController loginEmailController = new TextEditingController();
TextEditingController loginPasswordController = new TextEditingController();

bool _obscureTextLogin = true;
bool _obscureTextSignup = true;
bool _obscureTextSignupConfirm = true;

TextEditingController signupEmailController = new TextEditingController();
TextEditingController signupNameController = new TextEditingController();
TextEditingController signupPasswordController = new TextEditingController();
TextEditingController signupConfirmPasswordController =
    new TextEditingController();

class UploadCar extends StatefulWidget {
  UploadCar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UploadCarState createState() => new _UploadCarState();
}

class _UploadCarState extends State<UploadCar>
    with TickerProviderStateMixin, ImagePickerListener {
  File _image;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  DateTime date2;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    imagePicker = new ImagePickerHandler(this, _controller);
    imagePicker.init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text(
          "Upload Vehicle",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              new GestureDetector(
                onTap: () => imagePicker.showDialog(context),
                child: new Center(
                  child: _image == null
                      ? new Stack(
                          children: <Widget>[
                            new Center(
                              child: new CircleAvatar(
                                radius: 80.0,
                                backgroundColor: Colors.redAccent,
                                child: new Icon(Icons.add_a_photo,
                                    size: 100, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      : new Container(
                          height: 160.0,
                          width: 160.0,
                          decoration: new BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: new DecorationImage(
                              image: new ExactAssetImage(_image.path),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(color: Colors.red, width: 5.0),
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(80.0)),
                          ),
                        ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: "Brand",
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: "Model",
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: "Price", suffixText: "£"),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: MaskedTextController(mask: '0000-00'),
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: "Register Year",
                          helperText: 'YYYY-MM'),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: "Mileage", suffixText: 'Km'),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: "Description",
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
                            "TRADE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          retrievalBox(context);
                        }),
                  ),
                  SizedBox(height: 300)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  userImage(File _image) {
    setState(() {
      this._image = _image;
    });
  }
}

void retrievalBox(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("SUCCESS!"),
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text('Trade offer sent!'),
        RaisedButton(
          padding: EdgeInsets.all(1.0),
          shape: StadiumBorder(),
          child: Text(
            "RETURN",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/Shopping Details'));
          },
        )
      ]));

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
