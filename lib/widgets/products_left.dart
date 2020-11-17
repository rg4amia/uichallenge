import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../hextocolor.dart';

class rowProducts extends StatelessWidget {
  @override
  var width;
  var height;
  var montant;
  var panier;
  String image;

  rowProducts({this.montant, this.panier,this.image});

  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: (width - (width - 15)), right: 15),
          height: 165,
          width: (width * 0.40625),
          decoration: BoxDecoration(
            color: Color(0xffece8f2),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child:Image.asset('assets/noel.png',),
          ),
        ),
        Container(
          padding: EdgeInsets.all(13),
          width: (width * 0.40625),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('\$' + montant,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.4,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700)),
              Text(panier,
                  style: TextStyle(
                      color: itemColor,
                      fontSize: 12.4,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w500)),
            ],
          ),
        )
      ],
    );
  }
}
