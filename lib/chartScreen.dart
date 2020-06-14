import 'package:flutter/material.dart';
import './model/data.dart';

class ChartScreen extends StatelessWidget {
  static const String routeName = "/account";
   
final Data value;

  const ChartScreen({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Container(
          child: Center(
        child: Text(value.name),
      )),
    );
  }
}