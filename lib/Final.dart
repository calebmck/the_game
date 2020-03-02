import 'package:flutter/material.dart';
import 'P1.1.dart';
import 'P2.dart';
import 'main.dart';

class Final extends StatelessWidget{
  int score;

  Final(this.score);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        //this is top bar & scaffold which allows text ect
          body: Column(children: <Widget>[
          AppBar(title: Text("Good job!"),
          backgroundColor: Colors.red),
          Text("Final score of [$score]",
              style: Theme.of(context).textTheme.display2),
            RaisedButton(
              child: Text("RESTART"),
              color: Colors.redAccent,
              onPressed: () {
                score =0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TheGame(score)),
                );
              },
            ),
        ]),
        ));
  }

}