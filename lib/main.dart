import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:basic_utils/basic_utils.dart';
import './Status_page.dart';
import 'ListTile_maker.dart';
import 'DM.dart';
import 'MyAppBar.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
//TODO-make only one widget stateful and check if state changes


    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsaApp2",
      routes:<String, WidgetBuilder> {
        '/a': (BuildContext context) => Text('page A'),
        '/b': (BuildContext context) => DM(),
        '/c': (BuildContext context) => Status(),},




      home: Scaffold(
        appBar: MyAppBar(context: context,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text("Hiii"),
            action: SnackBarAction(
              label: "Hibye",
              onPressed: () {
                
                Navigator.of(context).pushNamed('/b');
              },
              textColor: Colors.blue,
            ),
          ));
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add_comment),
      ),
      body: ChatsView(),
    );
  }
}



class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (context, index) {
          return myListTile(index);
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.blueGrey[800],
            indent: 80,
          );
        },
        itemCount: 35,
      );
  }
}

