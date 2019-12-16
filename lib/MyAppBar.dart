import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  static List<Widget> default4 = [
    Builder(
      builder: (context) => new IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Scaffold.of(context)
                .showSnackBar(new SnackBar(content: Text("df")));
            //showSearch(context: context, delegate: null);
          }),
    ),
    Builder(
      builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.of(context).pushNamed('/c');
            },
          ),
    ),
  ];

  MyAppBar({
    Widget title=const Text("WhatsApp"),BuildContext context,
  }) : super(
            title: title,
            actions: default4,
            backgroundColor: Colors.green[900]);
}
