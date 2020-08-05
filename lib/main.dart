import 'package:flutter/material.dart';
import 'package:weather/cities/Chennai/chennai.dart';
import 'package:weather/cities/Kolkata/kolkata.dart';
import 'package:weather/cities/Mumbai/mumbai.dart';
import 'package:weather/cities/NewDelhi/new_delhi.dart';
import 'package:weather/cities/Pune/pune.dart';
import 'package:weather/pageRouteAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Weather for 5 Cities of India'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/city.gif'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                margin: EdgeInsets.only(left: 50),
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'Mumbai',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Click here',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: 'dash1',
                            child: Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xFFFFFFFF)),
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/mumbai.jpg')))),
                          ),
                          Positioned(
                            right: 24,
                            top: 40,
                            child: Text(
                              'see weather of',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, PageRouteAnimation(widget: Mumbai()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                margin: EdgeInsets.only(left: 50),
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'New Delhi',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Click here',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: 'dash2',
                            child: Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xFFFFFFFF)),
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/delhi.jpg')))),
                          ),
                          Positioned(
                            right: 24,
                            top: 40,
                            child: Text(
                              'see weather of',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, PageRouteAnimation(widget: NewDelhi()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                margin: EdgeInsets.only(left: 50),
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'Pune',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Click here',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: 'dash3',
                            child: Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xFFFFFFFF)),
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/pune.jpg')))),
                          ),
                          Positioned(
                            right: 24,
                            top: 40,
                            child: Text(
                              'see weather of',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, PageRouteAnimation(widget: Pune()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                margin: EdgeInsets.only(left: 50),
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'Kolkata',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Click here',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: 'dash4',
                            child: Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xFFFFFFFF)),
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/kolkata.jpg')))),
                          ),
                          Positioned(
                            right: 24,
                            top: 40,
                            child: Text(
                              'see weather of',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, PageRouteAnimation(widget: Kolkata()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                margin: EdgeInsets.only(left: 50),
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'Chennai',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Click here',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: 'dash5',
                            child: Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xFFFFFFFF)),
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/chennai1.jpg')))),
                          ),
                          Positioned(
                            right: 24,
                            top: 40,
                            child: Text(
                              'see weather of',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, PageRouteAnimation(widget: Chennai()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
