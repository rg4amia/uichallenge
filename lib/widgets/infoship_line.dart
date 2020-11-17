import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Infoshipline extends StatelessWidget {
  String textinfo;
  Icon icons;

  Infoshipline({this.icons, this.textinfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icons,
          SizedBox(
            width: 10,
          ),
          Text(
            textinfo,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
