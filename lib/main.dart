import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_ui_challenge/widgets/products_left.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'hextocolor.dart';
import 'views/checkout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'week-ui-challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/checkout': (context) => Checkout(),
      },
      home: MyHomePage(title: 'Week ui challenge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      /*   appBar: AppBar(
        title: Text(widget.title),
      ),*/
      backgroundColor: violetColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 5.2,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Total price :',
                              style: TextStyle(color: grisColor, fontSize: 13),
                            ),
                            Text(
                              "\$5,651.00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(28),
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Positioned(
                              child:
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
                              ),),
                            Positioned(
                              top: -4.5,
                              left: 29.5,
                              child: Container(
                                height: 14.0,
                                width: 14.0,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: new Border.all(color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                            color: Color(0xffece8f2),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(300.0),
                            child:Image.asset('assets/bag.jpg',),
                          )
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          child: Text('Confirm & Pay',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text('4 items',
                            style: TextStyle(
                                color: itemColor,
                                fontSize: 16,
                                fontFamily: 'Roboto')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                width: width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        rowProducts(
                          montant: '256.000',
                          panier: '2x',
                        ),
                        rowProducts(
                          montant: '1.200',
                          panier: '2x',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        rowProducts(
                          montant: '256.000',
                          panier: '2x',
                        ),
                        rowProducts(
                          montant: '256.000',
                          panier: '2x',
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 3.5,
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, '/checkout');
        },
        label: Text('EDIT'),
        icon: Icon(SimpleLineIcons.pencil),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
