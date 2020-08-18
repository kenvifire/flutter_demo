import 'package:fultter_demo/question.dart';

class QuizzBank {

  List<Question> _questionList = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: false),
    Question(q: 'A slug\'s blood is green', a: true),
  ];
  int _index = 0;

  String getQuestionText() {
    return _questionList[_index].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_index].questionAnswer;
  }

  bool hasNext() {
    return _index < _questionList.length - 1;
  }

  void nextQuestion() {
    if(_index < _questionList.length - 1) {
      _index ++;
    }
  }



}