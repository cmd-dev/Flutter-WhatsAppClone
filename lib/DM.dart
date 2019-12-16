import 'package:flutter/material.dart';
import 'ListTile_maker.dart';
import 'package:whatsapp_clone/MyAppBar.dart';

import 'main.dart';

class DM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(

            title: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Select contact ",
                ),
                Text("33 contacts",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            )

            //TODO- Check if appbar of main.dart overrides this one

            ),
        body: ListView.builder(
          itemCount: 33,
          itemBuilder: (context, index) {
            return InkWell(
                child: Container(
                    height: 70,
                    width: 370,
                    child: ListTile(
                      title: getName(getRandom(number: 33)),
                      subtitle:
                          Text(getStatus().elementAt(getRandom(number: 29))),
                      leading: ClipOval(
                        child: getImage(),
                      ),
                    )));
          },
        ));
  }
}
