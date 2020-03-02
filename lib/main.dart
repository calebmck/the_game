import 'package:flutter/material.dart';
import 'P1.1.dart';
import 'P2.dart';
void main() => runApp(TheGame(0));

class TheGame extends StatelessWidget{
  int score;
  TheGame(this.score);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Main(score));
  }
}

class Main extends StatelessWidget {
  int score;
  Main(this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: <Widget>[
        AppBar(title: Text("Which Province is bigger?"),
        backgroundColor: Colors.deepPurpleAccent,),


        Text("Your score is [$score]",
            style: Theme.of(context).textTheme.display2),

        RaisedButton(
          child: Text("Quebec"),
          color: Colors.lightBlue,
          onPressed: () {
            score +=5;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P11(score)),
            );
          },
        ),

        RaisedButton(
          child: Text("Ontario"),
          color: Colors.lightBlue,
          onPressed: () {
            score -=5;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P11(score)),
            );
          },
        ),
      ]),
    );
  }
}
