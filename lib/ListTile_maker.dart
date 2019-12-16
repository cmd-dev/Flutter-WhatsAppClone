import 'package:flutter/material.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:intl/intl.dart';
import 'dart:math';

List<String> getStatus() {
  List<String> a = [
    ' The chap slipped into the crowd and was lost',
    'Mesh mire keeps chicks inside.',
    'a break in the dam almost caused a flood.',
    'We are sure that one war is enough.',
    'The smell of burned rags itches my nose.',
    'The chap slipped into the crowd and was lost.',
    'A bowl of rice is free with chicken stew.',
    'It was done before the boy could see it.',
    'That guy is the writer of a few banned books.',
    'Jerk the cord, and out tumbles the gold.',
    'Nine rows of soldiers stood in line.',
    'Beef is scarcer than some lamb.',
    'Much of the story makes good sense.',
    'The hail pattered on the burnt brown grass.',
    'We need grain to keep our mules healthy.',
    'Clothes and lodging are free to new men.',
    'A plea for funds seems to come again.',
    'The crooked maze failed to fool the mouse.',
    'These coins will be needed to pay his debt.',
    'The frosty air passed through the coat.',
    'All sat frozen and watched the screen.',
    'The doorknob was made of bright clean brass.',
    'The couch cover and hall drapes were blue.',
    'Bribes fail where honest men work.',
    'Bottles hold four kinds of rum.',
    'The wide road shimmered in the hot sun.',
    'Many hands help get the job done.',
    'Gray paint stretched for miles around.',
    'Bribes fail where honest men work.',
    'It was a bad error on the part of the new judge'
  ];

  return a;
}

class myListTile extends StatelessWidget {
  int index;

  myListTile(this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print("item $index was selected ");
      },
      title: getName(getRandom(number: 33)),
      subtitle: getSubtitle(getRandom(number: 30)),
      leading:ClipOval(
          child:getImage(),),

// borderRadius: BorderRadius.circular(20.0),

//,
      trailing: Text(
        DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now()),
      ),
    );
  }
}

int getRandom({int number: 927}) {
  var ar = new Random();
  return ar.nextInt(number);
}

Widget getName(int n) {
  var names = [
    "Adam",
    "Alex",
    "Aaron",
    "Ben",
    "Carl",
    "Dan",
    "David",
    "Edward",
    "Fred",
    "Frank",
    "George",
    "Hal",
    "Hank",
    "Ike",
    "John",
    "Jack",
    "Joe",
    "Larry",
    "Monte",
    "Matthew",
    "Mark",
    "Nathan",
    "Otto",
    "Paul",
    "Peter",
    "Roger",
    "Roger 2",
    "Steve",
    "Thomas",
    "Tim",
    "Ty",
    "Victor",
    "Walter"
  ];

  return Text(
    names.elementAt(n),
    style: TextStyle(
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget getSubtitle(int s) {
  List<String> words = [
    "bad",
    "easy",
    "lol",
    "Hurt",
    "May",
    "code",
    "hate",
    "kill",
    "ice",
    "fire",
    "icecream",
    "hangman",
    "destroy",
    "computer",
    "book",
    "dictionary",
    "technology",
    "power",
    "thunder",
    "controller",
    "dexterity",
    "keyboard",
    "thunderous",
    "blizzard",
    "hazardous",
    "algorithm",
    "destruction",
    "operation",
    "assignment",
    "despicable"
  ];

  return Text(StringUtils.capitalize(words.elementAt(s)));
}

Widget getImage() {



  int temp = getRandom();

  if (temp % 2 == 0) {
    return Image.network(
        "https://picsum.photos/id/${getRandom(number: 30)}/60/60");
  } else if (temp % 7 != 0) {
    return Image.network(
        "http://lorempixel.com/60/60/people/${getRandom(number: 10)}");
  } else
    return Image.network(
      "https://cdn-images-1.medium.com/max/1000/1*lbUK5vUBlvFy3kU0LztgCg.png",
      height: 60,
      width: 60,
    );
}
