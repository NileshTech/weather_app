import 'package:flutter/material.dart';
import 'package:weather/cities/Mumbai/MNow.dart';
import 'package:weather/cities/Mumbai/MThreeA.dart';
import 'package:weather/cities/Mumbai/MThreeB.dart';
import 'package:weather/cities/Mumbai/MTom.dart';
import 'package:weather/cities/Mumbai/MTwoA.dart';
import 'package:weather/cities/Mumbai/MTwoB.dart';
import 'package:weather/cities/Mumbai/MYes.dart';
import 'package:weather/pageRouteAnimation.dart';

class Mumbai extends StatefulWidget {
  Mumbai({Key key}) : super(key: key);

  @override
  _MumbaiState createState() => _MumbaiState();
}

class _MumbaiState extends State<Mumbai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            child: Text('Mumbai',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Hero(
            tag: 'dash1',
            child: Image.asset('assets/mumbai.jpg'),
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
