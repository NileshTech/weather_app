import 'package:flutter/material.dart';
import 'package:weather/cities/NewDelhi/NNow.dart';
import 'package:weather/cities/NewDelhi/NThreeA.dart';
import 'package:weather/cities/NewDelhi/NThreeB.dart';
import 'package:weather/cities/NewDelhi/NTom.dart';
import 'package:weather/cities/NewDelhi/NTwoA.dart';
import 'package:weather/cities/NewDelhi/NTwoB.dart';
import 'package:weather/cities/NewDelhi/NYes.dart';
import 'package:weather/pageRouteAnimation.dart';

class NewDelhi extends StatefulWidget {
  NewDelhi({Key key}) : super(key: key);

  @override
  _NewDelhiState createState() => _NewDelhiState();
}

class _NewDelhiState extends State<NewDelhi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            child: Text('New Delhi',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Hero(
            tag: 'dash2',
            child: Container(child: Image.asset('assets/delhi.jpg')),
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
