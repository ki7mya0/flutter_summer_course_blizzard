import 'package:wordfind_app/models/char_model.dart';

class TaskModel {
  String question = '';
  String pathImage = '';
  String answer = '';
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];

  TaskModel(
      {required this.question,
      required this.answer,
      required this.pathImage,
      this.arrayButtons = const []});

  setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  void setIsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (isFull = false) {
      return complete;
    }
    String answeredString =
        puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;
  }

  clone() {
    return TaskModel(question: question, answer: answer, pathImage: pathImage);
  }
}
