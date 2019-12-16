import 'main.dart';
import 'package:whatsapp_clone/ListTile_maker.dart';
import 'MyAppBar.dart';

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StatusState();
  }
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(



      child:Scaffold(
          appBar: MyAppBar(

          ),
          body:ListView.separated(

        itemCount: 33,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black87,);

        },
        itemBuilder: (context, index) {
           if(index==0){
            return SizedBox(
               height: 80,
               child: ListTile(
                   title: Text("My status"),
                   subtitle: Text("Tap to add status update"),
                   leading: Icon(Icons.face,)),
             );}

            else
              {return ListTile(
              title: getName(getRandom(number: 33)),
              subtitle: Text(
                "Status updated at  ${DateFormat.jm().format(DateTime.now())}",
              ),
              leading: ClipOval(child:getImage()),

          );}

        },
      )),
    );
  }
}
