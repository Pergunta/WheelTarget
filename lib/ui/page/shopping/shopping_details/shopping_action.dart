import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/cart_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/custom_float.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingAction extends StatefulWidget {
  final Product product;
  ShoppingAction({this.product});

  @override
  ShoppingActionState createState() {
    return new ShoppingActionState();
  }
}

class ShoppingActionState extends State<ShoppingAction> {
  String _value = "Cyan";
  String _sizeValue = "M";

  Widget colorsCard() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Colors",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: widget.product.colors
                .map((pc) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                          selectedColor: pc.color,
                          label: Text(
                            pc.colorName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          selected: _value == pc.colorName,
                          onSelected: (selected) {
                            setState(() {
                              _value = selected ? pc.colorName : null;
                            });
                          }),
                    ))
                .toList(),
          ),
        ],
      );

  

 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        colorsCard(),
        CommonDivider(),
        SizedBox(
          height: 5.0,
        ),
        
        CommonDivider(),
        SizedBox(
          height: 5.0,
        ),
      
      ],
    );
  }
}
