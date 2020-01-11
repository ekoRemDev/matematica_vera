import 'dart:math';

import 'package:flutter/material.dart';
import 'package:matematica_vera/config/app_localization.dart';

class ExerciseDoneWidget extends StatelessWidget {

  static const _emojis = [
    "🎊", // Confetti Ball
    "🎉", // Party Popper
    "🥳", // Partying Face
    "🎁", // Wrapped Gift
  ];

  final Function onBackTaped;
  final Function onRepeatTaped;

  const ExerciseDoneWidget({
    Key key,
    @required this.onBackTaped,
    @required this.onRepeatTaped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emoji = (List.of(_emojis)..shuffle(Random())).first;
    final loc = AppLocalization.of(context);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                emoji,
                style: TextStyle(fontSize: 108.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                loc.exercise_done.toUpperCase(),
                style: TextStyle(fontSize: 20.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "✓ ${loc.good_job}",
                style: TextStyle(fontSize: 32.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72.0,
                child: OutlineButton(
                  onPressed: onBackTaped,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 56.0,),
                      Text(loc.go_back,
                        style: TextStyle(fontSize: 32.0),),
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72.0,
                child: OutlineButton(
                  onPressed: onRepeatTaped,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.repeat, size: 56.0,),
                      Text(loc.repeat,
                        style: TextStyle(fontSize: 32.0),),
                    ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}