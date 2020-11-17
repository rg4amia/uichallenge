import 'package:dotted_border/dotted_border.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:week_ui_challenge/hextocolor.dart';
import 'package:week_ui_challenge/widgets/infoship_line.dart';

class Checkout extends StatefulWidget {
  Checkout({Key key}) : super(key: key);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  var width;
  var height;
  var contwhite;
  var leftmarging;
  var CardRadius = 10.0;

  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    contwhite = height - (height * 0.189);
    leftmarging = (width - (width - 5));

    print(contwhite / 3);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: violetColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: contwhite,
              // height: contwhite,
              // width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 32,
                          top: 29,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(300.0),
                              child: Container(
                                height: 45.3,
                                width: 45.3,
                                decoration: BoxDecoration(
                                  color: grisColor,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -4.5,
                              left: 29.5,
                              child: Container(
                                height: 14.0,
                                width: 14.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -2,
                              left: 30.7,
                              child: Container(
                                height: 10.5,
                                width: 10.5,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 32, top: 10.5),
                        child: Text(
                          'Checkout ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: leftmarging, top: 14.5, right: 6),
                    height: contwhite / 3.6,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(9.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Shipping information',
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 0.55,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Icon(
                                  SimpleLineIcons.pencil,
                                  size: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Infoshipline(
                          icons: Icon(
                            SimpleLineIcons.people,
                            size: 13.5,
                          ),
                          textinfo: 'Danielle Johnson',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Infoshipline(
                          icons: Icon(
                            SimpleLineIcons.location_pin,
                            size: 13.5,
                          ),
                          textinfo: '7348 7348 Scarletwood Ter San Jose, CA..',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Infoshipline(
                          icons: Icon(
                            SimpleLineIcons.phone,
                            size: 13.5,
                          ),
                          textinfo: '408-027-8153',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: leftmarging, top: 5, right: 6),
                    height: contwhite / 6,
                    decoration: BoxDecoration(
                      color: paymentfoColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Payment',
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 0.55,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Icon(
                                  SimpleLineIcons.pencil,
                                  size: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Infoshipline(
                          icons: Icon(
                            SimpleLineIcons.credit_card,
                            size: 13.5,
                          ),
                          textinfo: '5573 5467 8689 7366      12/21   896',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 50, left: 50),
                    height: contwhite / 5.6,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal:',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '\$5,650.00',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taxes:',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '\$1.00',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total price:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '\$5,651.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 52.5,
                    margin:
                        EdgeInsets.only(top: 8, right: 50, left: 50, bottom: 5),
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  )
                ],
              ),
            ),
            //Text('Place order'),
            Container(
                height: 93,
                width: width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 34),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.all(15),
                        height: 80,
                        width: width / 3.5,
                        decoration: BoxDecoration(
                            color: paymentfoColor,
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(50.0),
                                bottomLeft: Radius.circular(50.0)))),
                    Positioned(
                        top: 15,
                        bottom: 1,
                        left: 85,
                        child: FDottedLine(
                          color: Colors.white24,
                          strokeWidth: 2.0,
                          dottedLength: 1.0,
                          space: 3.0,
                          corner: FDottedLineCorner.all(50),

                          /// add widget
                          child: Container(
                            width: 150,
                            height: 63.5,
                            alignment: Alignment.center,
                            child: Text(
                              "PLACE ORDER",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                letterSpacing: 1.2,
                                color: Colors.white24,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                        ),
                    Positioned(
                      bottom: 7,
                      left: 63.7,
                      child: Container(
                        height: 79,
                        width: 79,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 11.5,
                      left: 68.0,
                      child: Container(
                        child: Icon(SimpleLineIcons.arrow_right),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
