import 'package:covid19quiz/answer_page.dart';
import 'package:flutter/material.dart';

class QuizPage2 extends StatefulWidget {
  QuizPage2(this.counter, {Key key}) : super(key: key);

  final int counter;

  @override
  _QuizPage2State createState() => _QuizPage2State();
}

class _QuizPage2State extends State<QuizPage2> {
  int _incrementCounter() {
    int correctCounter = widget.counter + 1;
    return correctCounter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q3　発症した場合何日間隔離が必要ですか？'),
                ),
                OutlineButton(
                  child: Text('１日'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnswerPage(widget.counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('１週間'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnswerPage(widget.counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('２週間'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnswerPage(_incrementCounter())));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('１ヶ月'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnswerPage(widget.counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
