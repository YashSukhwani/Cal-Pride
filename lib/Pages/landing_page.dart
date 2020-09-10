import 'package:berkeley/Pages/quiz_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage()), (Route route) => route == null),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(padding: new EdgeInsets.all(3.0), 
            child: new Center(child: new Text("How well do you know Cal ?", textAlign: TextAlign.center ,style: new TextStyle(fontSize: 45.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: 'Playfair')))),
            new Container(padding: new EdgeInsets.all(3.0), 
            child: new Text("Tap to Proceed", style: new TextStyle(fontSize: 25.0, color: Colors.purpleAccent, fontWeight: FontWeight.w400, fontFamily: 'Dancing Script'))), 
            new Container(height: 30), 
            new Center(child: new Image(image: AssetImage('Assets/image1.jpg'))  )        
            ],
        ),
      ),
    );
  }
}