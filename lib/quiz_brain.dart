import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
        question: 'The most tallest mountain is Hymali in The World',
        answer: true),
    Question(
        question: 'The most longest river is Missipi in The World',
        answer: false),
    Question(
        question: 'Astana is the capital city of Kazakhstan', answer: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void setQuestionNum() {
    _questionNumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText.toString();
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int get questionLength {
    return _questionBank.length - 1;
  }
}
