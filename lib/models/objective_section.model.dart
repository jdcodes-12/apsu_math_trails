import 'dart:convert';

import 'package:math_trails/models/question.model.dart';

class ObjectiveSection {
    final int stopId;
    final String sectionHeader;
    final List<Question> questions;

    ObjectiveSection._({
      required this.stopId,
      required this.sectionHeader,
      required this.questions,
    });

    factory ObjectiveSection.fromJson(Map<String, dynamic> json) {
      List<dynamic> questionsJson = json['questions'];
      List<Question> questions = 
        questionsJson.map((question) => Question.fromJson(question)).toList();

      return ObjectiveSection._(
        stopId: json['stop_id'],
        sectionHeader: json['section_header'],
        questions: questions
      ); 
    }

    Map<String, dynamic> toJson() => {
      "stop_id": stopId,
      "section_header": sectionHeader,
      "question": questions.map((question) => question.toJson())
    };
}