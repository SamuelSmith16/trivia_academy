import 'package:flutter/material.dart';
import 'package:trivia_academy/question.dart';
import 'package:trivia_academy/score_screen.dart';
import 'package:trivia_academy/option_card.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionsList = Question.getQuestionsList();
  bool enableButton = false;

  void verifyResponse() {
    if (answer == questionsList[index].answer) {
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Center(
          child: Image(
            image: AssetImage('lib/assets/icon.png'),
          ),
        ),
      ),
      body: Column(
        children: [
          // Widget da pergunta.
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA ${index + 1}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  questionsList[index].questionText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          // Widget das opções da pergunta.
          Expanded(
            child: ListView(
              children: [
                // Widget da opção 1.
                OptionCard(
                  border: answer == 1
                      ? Border.all(
                          color: Color(0xffDA0175),
                          style: BorderStyle.solid,
                        )
                      : null,
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    activeColor: Color(0xffDA0175),
                    title: Text(questionsList[index].option1),
                    onChanged: (int value) {
                      setState(
                        () {
                          answer = value;
                          enableButton = true;
                        },
                      );
                    },
                  ),
                ),
                // Widget da opção 2.
                OptionCard(
                  border: answer == 2
                      ? Border.all(
                          color: Color(0xffDA0175),
                        )
                      : null,
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    activeColor: Color(0xffDA0175),
                    title: Text(questionsList[index].option2),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                        enableButton = true;
                      });
                    },
                  ),
                ),
                // Widget da opção 3.
                OptionCard(
                  border: answer == 3
                      ? Border.all(
                          color: Color(0xffDA0175),
                        )
                      : null,
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    activeColor: Color(0xffDA0175),
                    title: Text(questionsList[index].option3),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                        enableButton = true;
                      });
                    },
                  ),
                ),
                // Widget da opção 4.
                OptionCard(
                  border: answer == 4
                      ? Border.all(
                          color: Color(0xffDA0175),
                        )
                      : null,
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    activeColor: Color(0xffDA0175),
                    title: Text(questionsList[index].option4),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                        enableButton = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          // Widget do botão 'Responder'.
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: enableButton
                    ? () {
                        verifyResponse();
                        if (index < questionsList.length - 1) {
                          setState(
                            () {
                              index = index + 1;
                              answer = 0;
                              enableButton = false;
                            },
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScoreScreen(
                                maximun: questionsList.length,
                                result: score,
                              ),
                            ),
                          );
                        }
                      }
                    : null,
                disabledColor: Color(0x35DA0175),
                child: Text(
                  'Responder',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0xffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
