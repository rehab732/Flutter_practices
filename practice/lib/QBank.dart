import 'Question.dart';

class QuestionBank {
  int current = 0;
  List<Question> q_Bank = [
    Question(id: 1, text: "Question 1", ans: true),
    Question(id: 2, text: "Question 2", ans: false),
    Question(id: 3, text: "Question 3", ans: false),
    Question(id: 4, text: "Question 4", ans: true),
    Question(id: 5, text: "Question 5", ans: false),
    Question(id: 6, text: "Question 6", ans: true),
    Question(id: 7, text: "Question 7", ans: true),
  ];

  Question getMyQuestion() {
    return q_Bank[current];
  }

  void move() {
    if (current >= 6) current = -1;
    current++;
  }
}
