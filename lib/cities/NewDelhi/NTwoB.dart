import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/data.dart';
import 'dart:convert';

import 'package:weather/model/weather.dart';

const String lat = '28.61282';
const String lon = '77.23114';

class TwoDaysBefore extends StatefulWidget {
  TwoDaysBefore({Key key}) : super(key: key);

  @override
  _TwoDaysBeforeState createState() => _TwoDaysBeforeState();
}

class _TwoDaysBeforeState extends State<TwoDaysBefore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
            child: FutureBuilder(
          future: getTwoDaysAgo(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: <Widget>[
                  Container(
                    child: Text('New Delhi',
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

Future<Weather> getTwoDaysAgo() async {
  final result = await http.Client().get(
      "http://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$lon&dt=1596451996&units=metric&appid=$API_KEY");

  if (result.statusCode != 200) throw Exception();

  return parsedJson(result.body);
}

Weather parsedJson(final response) {
  final jsonDecoded = json.decode(response);

  final jsonWeather = jsonDecoded["current"];

  return Weather.fromJson(jsonWeather);
}
