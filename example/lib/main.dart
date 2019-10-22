import 'package:custom_alert_box/custom_alert_box.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: new MaterialButton(
          color: Colors.blueAccent,
          child: Icon(Icons.add_to_home_screen),
          onPressed: () async {
            await CustomAlertBox.showCustomAlertBox(
                context: context, willDisplayWidget: BoxWidget());
          },
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Text("Click below to exit"),
    );
  }
}
