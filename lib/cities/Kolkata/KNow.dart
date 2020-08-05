import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/data.dart';
import 'package:weather/model/weather.dart';

const String lat = '22.569719';
const String lon = '88.36972';

class Today extends StatefulWidget {
  Today({Key key}) : super(key: key);

  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
            child: FutureBuilder(
          future: getNowData(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: <Widget>[
                  Container(
                    child: Text('Kolkata',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Image.asset(
                    'assets/cloud.gif',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.only(left: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Temperature :" + " "),
                          Text(snapshot.data.temp.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                          Image.asset('assets/temp.png', height: 20, width: 20)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.only(left: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Presure :" + " "),
                          Text(snapshot.data.pressure.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold)),
                          Image.asset('assets/presure.png',
                              height: 20, width: 20)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.only(left: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Humidity :" + " "),
                          Text(snapshot.data.humidity.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                          Image.asset('assets/humidity.png',
                              height: 20, width: 20)
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else
              return Center(child: CircularProgressIndicator());
          },
        )));
  }
}

Future<Weather> getNowData() async {
  final result = await http.Client().get(
      "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=hourly,daily&units=metric&appid=$API_KEY");

  if (result.statusCode != 200) throw Exception();

  return parsedJson(result.body);
}

Weather parsedJson(final response) {
  final jsonDecoded = json.decode(response);

  final jsonWeather = jsonDecoded["current"];

  return Weather.fromJson(jsonWeather);
}
