import 'dart:convert';

import 'package:math_trails/models/answer.model.dart';

class Question {
  final String questionId;
  final String prompt;
  final String correctAnswerLabel;
  final List<Answer> answerChoices;

  Question._({
    required this.questionId,
    required this.prompt,
    required this.correctAnswerLabel,
    required this.answerChoices,
  });

  factory Question.fromJson(json) {

    List<dynamic> answerChoicesJson = json['answer_choices'];
    List<Answer> answerChoices = 
      answerChoicesJson.map((answer) => Answer.fromJson(answer)).toList();

    return Question._(
      questionId: json["question_id"],
      prompt: json["prompt"],
      correctAnswerLabel: json["correct_answer_label"],
      answerChoices: answerChoices,
    );
  } 

  Map<String, dynamic> toJson() => 
    {
      "question_id": questionId,
      "prompt": prompt,
      "correct_answer_label": correctAnswerLabel,
      "answer_choices": answerChoices.map((answer) => answer.toJson()),
    };
}