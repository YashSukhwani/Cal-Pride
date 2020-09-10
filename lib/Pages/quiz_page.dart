import 'package:berkeley/UI/correct_wrong_overlay.dart';
import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';
import 'score_page.dart';

import '../UI/button.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Computer Science @ Berkeley is Awesome", true),
    new Question("Oski made his debut in 1940", false),
    new Question("The gold in Cal's campus colors represent the \"Golden State\"", true),
    new Question("The oldest building on campus is North Gate Hall", false),
    new Question("The Campanile is the 3rd tallest bell and clock tower in the world", true),
    new Question("The football rivarly between the Golden Bears and the UCLA Bruins is called the 'Big Game'", false),
    new Question("There are 131 academic departments at UC Berkeley", true),
    new Question("Cal teams have won more than 100 national championships", false),
    new Question("Sproul Hall's steps became known as the 'Mario Savio Steps' after the Free Speech Movement", true)
  ]);

String questionText;
int questionNumber;
bool isCorrect;
bool overlayToShow = false;

void handleAnswer(bool answer) {
  isCorrect = currentQuestion.answer == answer;
  quiz.answer(isCorrect);
  this.setState(() {
    overlayToShow = true;
  });
}

void initState() {
  super.initState();
  currentQuestion = quiz.nextQuestion;
  questionNumber = quiz.questionNum;
  questionText = currentQuestion.question;
}

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( // This is our main page
          children: <Widget>[
            new AnswerButton(false, () => handleAnswer(false)),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(true, () => handleAnswer(true)),
          ],
        ),
        overlayToShow == true ? new CorrectWrongOverlay(
          isCorrect,
        () {
          if (quiz.length == questionNumber) {
            Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ScorePage(quiz.score, quiz.length)), (Route route) => route == null);
            return;
          }
          currentQuestion = quiz.nextQuestion;
          this.setState(() {
            overlayToShow = false;
            questionText = currentQuestion.question;
            questionNumber = quiz.questionNum;
          });
        }) : new Container()
      ],
    );
  }
}