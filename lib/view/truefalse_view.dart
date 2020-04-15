import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:truefalse/model/question_helper.dart';

class TrueFalse extends StatefulWidget {
  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
  List<Widget> _sonuclar = List();
  QuestionHelper _questionHelper = QuestionHelper();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            _question,
            _answer,
            _sonuc,
          ],
        ),
      ),
    );
  }

  Widget get _question => Expanded(
        flex: 5,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              _questionHelper.getQuestion(),
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.teal,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      );

  Widget get _answer => Expanded(
        flex: 2,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _kontrol(true);
                    });
                  },
                  child: Text("True")),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      _kontrol(false);
                    });
                  },
                  child: Text("False")),
            )),
          ],
        ),
      );

  void _kontrol(bool response) {
    if (response == _questionHelper.getAnswer()) {
      _sonuclar.add(Expanded(
        child: Icon(
          Icons.check,
          color: Colors.green,
        ),
      ));
    } else {
      _sonuclar.add(Expanded(
        child: Icon(
          Icons.close,
          color: Colors.red,
        ),
      ));
    }
    if (_questionHelper.questionNumber < _questionHelper.lengthList - 1) {
      _questionHelper.questionNumber++;
    } else {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "Complete Question List",
        desc: "Please select the choice",
        buttons: [
          DialogButton(
            child: Text(
              "Replay",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: (){
              setState(() {
                _questionHelper.questionNumber = 0;
              });
              Navigator.pop(context);
              },
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "Refresh",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: ()  {
              setState(() {
                _sonuclar.clear();
                _questionHelper.questionNumber = 0;
              });
              Navigator.pop(context);
              },
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();
    }
  }

  Widget get _sonuc => Expanded(
      flex: 1,
      child: Row(
        children: _sonuclar,
      ));
}
