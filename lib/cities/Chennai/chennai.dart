import 'package:flutter/material.dart';
import 'package:weather/cities/Chennai/CNow.dart';
import 'package:weather/cities/Chennai/CThreeA.dart';
import 'package:weather/cities/Chennai/CThreeB.dart';
import 'package:weather/cities/Chennai/CTom.dart';
import 'package:weather/cities/Chennai/CTwoA.dart';
import 'package:weather/cities/Chennai/CTwoB.dart';
import 'package:weather/cities/Chennai/CYes.dart';
import 'package:weather/pageRouteAnimation.dart';

class Chennai extends StatefulWidget {
  Chennai({Key key}) : super(key: key);

  @override
  _ChennaiState createState() => _ChennaiState();
}

class _ChennaiState extends State<Chennai> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('Chennai',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Hero(
            tag: 'dash5',
            child: Container(child: Image.asset('assets/chennai1.jpg')),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, PageRouteAnimation(widget: Today()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Todays weather report',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: Tommarrow()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tommarrow's weather report",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: TwoDaysLatter()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('After 2 Days weather report',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: ThreeDaysLatter()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('After 3 days weather report',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: Yesterday()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Yesterday's weather report",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: TwoDaysBefore()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Before 2 days weather report',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, PageRouteAnimation(widget: ThreeDaysBefore()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Before 3 days weather report',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
