import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class LoginTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: loginBody(context),
      ),
    );
  }

  loginBody(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[loginHeader(), loginFields(context)],
        ),
      );

  loginHeader() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/images/logo1.png"),
            width: 50,
            height: 50,
      
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Welcome to ${UIData.appName}",
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Sign in to continue",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );

  loginFields(BuildContext context) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Email",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));;
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            GestureDetector(
            onTap: () => retrievalBox(context),
              child: Text(
              "Forgot your password?",
              style: TextStyle(color: Colors.redAccent),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                child: Text(
                  "NEW ACCOUNT",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, "/Login 3");
                },
              ),
            ),Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                child: Text(
                  "PROCEED WITHOUT ACCOUNT",
                  style: TextStyle(color: Colors.redAccent),
                ),
                color: Colors.grey[200],
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
            ),
          ],
        ),
      );
    }

    void retrievalBox(BuildContext context){

      var alertDialog = AlertDialog(title: Text("Enter Your Email"),
                                    content: 
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        TextField(
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            labelText: "Email",
                                          ),
                                        ),RaisedButton(
                padding: EdgeInsets.all(1.0),
                shape: StadiumBorder(),
                child: Text(
                  "SEND PASSWORD",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/Login 2'));;
                },
              )
                                      ]));

      showDialog(context: context, builder: (BuildContext context) => alertDialog);


    }