import 'package:flutter/material.dart';
import 'landing_page.dart';

class ScorePage extends StatelessWidget {
  @override

  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  Widget build(BuildContext context) {
    return new Material(
      color: Colors.pinkAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        children: <Widget>[new Container(decoration: new BoxDecoration(color: Colors.black, shape: BoxShape.rectangle), width: 700, height: 20),
        new Container(decoration: new BoxDecoration(color: Colors.black, shape: BoxShape.rectangle), width: 700, height: 30, 
          child: Text("# Teaching", textAlign: TextAlign.center, style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w200, fontSize: 20.0, fontFamily: 'Playfair')),
          ), new Container(decoration: new BoxDecoration(color: Colors.black, shape: BoxShape.rectangle), width: 700, height: 30,
          child: Text("# Research", textAlign: TextAlign.center, style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w200, fontSize: 20.0, fontFamily: 'Playfair')),
          ), new Container(decoration: new BoxDecoration(color: Colors.black, shape: BoxShape.rectangle), width: 700, height: 30,
          child: Text("# Public Service", textAlign: TextAlign.center, style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w200, fontSize: 20.0, fontFamily: 'Playfair')),
          ), new Container(decoration: new BoxDecoration(color: Colors.black, shape: BoxShape.rectangle), width: 700, height: 15),
        new Container(
          child: new Image(image: AssetImage('Assets/image8.jpg'), fit: BoxFit.cover),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(9.0)), color: Colors.black)),
          new Container(height: 30),
          new Text("Your Score Is: ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33.0, fontFamily: 'Dancing Script'),),
          new Text(score.toString() + " / " + totalQuestions.toString(), style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33.0, fontFamily: 'Dancing Script'),),
          new Container(height: 20), 
          new IconButton(
            icon: new Icon(Icons.home),
            color: Colors.black,
            iconSize: 40.0,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()), (Route route) => route == null)
            ),
            new Container(decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2.0)), 
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                new Text("Made with love in Wisconsin", textAlign: TextAlign.center, 
                style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 9.0, fontFamily: 'Playfair'))
              ],
            ))
        ],
      )
    );
  }
}