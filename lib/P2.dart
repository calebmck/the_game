import 'package:flutter/material.dart';
import 'P1.1.dart';
import 'Final.dart';

class P2 extends StatelessWidget{
  int score;

  P2(this.score);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          //this is top bar & scaffold which allows text ect
          body: Column(children: <Widget>[
            AppBar(title: Text("Which country has a longer coastline?"),
              backgroundColor: Colors.deepPurpleAccent,),
            Text("Your score is [$score]",
                style: Theme.of(context).textTheme.display2),


            RaisedButton(
              child: Text("Canada"),
              color: Colors.lightBlue,
              onPressed: () {
                score +=5;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Final(score)),
                );
              },
            ),

            RaisedButton(
              child: Text("Australia"),
              color: Colors.lightBlue,
              onPressed: () {
                score -=5;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Final(score)),
                );
              },
            ),
          ]),
        ));
  }

}