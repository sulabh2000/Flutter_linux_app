import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() {
  runApp(MyApp());
}

mydata() async {
  var url = 'http://192.168.43.33/cgi-bin/date.py';
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

mydata1() async {
  var url = 'http://192.168.43.33/cgi-bin/cal.py';
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

mybody() {
  return Column(
    children: <Widget>[
      RaisedButton(
        onPressed: mydata,
        child: Text('Click for Current Date'),
      ),
      RaisedButton(
        onPressed: mydata1,
        child: Text('Click for Calender'),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web App'),
        ),
        body: Center(child: mybody()),
      ),
    );
  }
}
