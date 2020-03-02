import 'package:flutter/material.dart';
import 'P2.dart';

class P11 extends StatelessWidget {
  int score;

  P11(this.score);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //this is top bar & scaffold which allows text ect
      body: Column(children: <Widget>[
        AppBar(
          title: Text("Which city is farther West?"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        Text("Your score is [$score]",
            style: Theme.of(context).textTheme.display2),
        RaisedButton(
          child: Text("Reno, NV"),
          color: Colors.lightBlue,
          onPressed: () {
            score += 5;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P2(score)),
            );
          },
        ),
        RaisedButton(
          child: Text("San Diego, CA"),
          color: Colors.lightBlue,
          onPressed: () {
            score -= 5;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P2(score)),
            );
          },
        ),
      ]),
    ));
  }
}
