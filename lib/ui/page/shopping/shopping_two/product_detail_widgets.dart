import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/cart_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_two/product_card.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class ProductDetailWidgets extends StatelessWidget {
  final Product product;

  const ProductDetailWidgets({Key key, this.product}) : super(key: key);

  Widget appBarColumn(BuildContext context) => new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  defaultTargetPlatform == TargetPlatform.android
                      ? Icons.arrow_back
                      : Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () =>
                    Navigator.canPop(context) ? Navigator.pop(context) : null,
              ),
              new Text(
                "Product Detail",
                style: new TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              new Opacity(
                opacity: 0.0,
                child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          new SizedBox(
            height: 10.0,
          ),
          ProductCard(product: product)
        ],
      );
 
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    CartBloc cartBloc = CartBloc(product);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        appBarColumn(context),
        
      ],
    );
  }
}
