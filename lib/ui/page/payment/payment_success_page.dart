import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentSuccessPage extends StatefulWidget {
  @override
  PaymentSuccessPageState createState() {
    return new PaymentSuccessPageState();
  }
}

class PaymentSuccessPageState extends State<PaymentSuccessPage> {
  bool isDataAvailable = true;
  Widget bodyData() => Center(
        child: isDataAvailable
            ? RaisedButton(
                shape: StadiumBorder(),
                onPressed: () => showSuccessDialog(),
                color: Colors.amber,
                child: Text("Confirm Payment"),
              )
            : CircularProgressIndicator(),
      );

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Payment",
      actionFirstIcon: null,
      bodyData: bodyData(),
    );
  }

  void showSuccessDialog() {
    setState(() {
      isDataAvailable = false;
      Future.delayed(Duration(seconds: 1)).then((_) => goToDialog());
    });
  }

  goToDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  successTicket(),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    shape: StadiumBorder(),
                    color: Colors.redAccent,
                    child: Text('Continue Shopping',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {
                      Navigator.popUntil(
                          context, ModalRoute.withName('/Shopping List'));
                    },
                  )
                ],
              ),
            ),
          ),
    );
  }

  successTicket() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(4.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Thank You!",
                  textColor: Colors.redAccent,
                  subtitle: "Your transaction was successful",
                ),
                ListTile(
                  title: Text("Date"),
                  subtitle: Text("26 June 2018"),
                  trailing: Text("11:00 AM"),
                ),
                ListTile(
                  title: Text("Chris Paul"),
                  subtitle: Text("chrispaul_123@gmail.com"),
                  trailing: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: new AssetImage(UIData.pkImage),
                  ),
                ),
                ListTile(
                  title: Text("Amount"),
                  subtitle: Text("\$20.000"),
                  trailing: Text("Completed"),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0.0,
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.ccAmex,
                      color: Colors.blue,
                    ),
                    title: Text("Credit/Debit Card"),
                    subtitle: Text("Amex Card ending ***6"),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
