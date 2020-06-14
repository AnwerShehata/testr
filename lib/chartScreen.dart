import 'package:flutter/material.dart';
import './bloc.dart';
import './model/users.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartScreen extends StatefulWidget {
  static const String routeName = "/account";

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Container(
        child: BlocConsumer<UserBloc, List<User>>(
          builder: (context, childList) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: childList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                          title: Text(childList[index].name), onTap: () => {}),
                    ],
                  ),
                );
              },
            );
          },
          listener: (BuildContext context, childList) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Added2!'),
            ));
          },
        ),
      ),
    );
  }
}
