import 'package:flutter/material.dart';
import 'package:weather/cities/Kolkata/KNow.dart';
import 'package:weather/cities/Kolkata/KThreeA.dart';
import 'package:weather/cities/Kolkata/KThreeB.dart';
import 'package:weather/cities/Kolkata/KTom.dart';
import 'package:weather/cities/Kolkata/KTwoA.dart';
import 'package:weather/cities/Kolkata/KTwoB.dart';
import 'package:weather/cities/Kolkata/KYes.dart';
import 'package:weather/pageRouteAnimation.dart';

class Kolkata extends StatefulWidget {
  Kolkata({Key key}) : super(key: key);

  @override
  _KolkataState createState() => _KolkataState();
}

class _KolkataState extends State<Kolkata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            child: Text('Kolkata',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Hero(
            tag: 'dash4',
            child: Container(child: Image.asset('assets/kolkata.jpg')),
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
