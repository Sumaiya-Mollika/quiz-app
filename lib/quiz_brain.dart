import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Flutter is developed by Google', true),
    Question(
        'The first alpha version of Flutter was released in May 2019', false),
    Question(
        'Flutter is mainly optimized for 2D mobile apps that can run on both Android and iOS platforms',
        true),
    Question(' Flutter is a SDK.', true),
    Question(' Dart is a object-oriented programming language.', true),
    Question('Dart is used to create a frontend user interfaces', true),
    Question('The Dart language can not be compiled Both AOT and JIT.', false),
    Question(
        'Without the main() function, we cannot write any program on Flutter.',
        true),
    Question(' A Stream is a sequence of asynchronous events.', true),
    Question('The subclasses of Key must be a GlobalKey or LocalKey.', true),
    Question('Ticker in Flutter is a refresh rate of our animation.', true),
    Question(
        'The Container widget in Flutter is a box that comes with a specified size.',
        false),
    Question(
        ' When you build the Flutter app the first time, it will take a longer time..',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
