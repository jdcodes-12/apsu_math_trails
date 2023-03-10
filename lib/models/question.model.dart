class Question {
  final String questionId;
  final String prompt;
  final String correctAnswerLabel;
  // final List<Answer> answerChoices;

  Question._({
    required this.questionId,
    required this.prompt,
    required this.correctAnswerLabel,
  });

  factory Question.fromJson(json) {
    return Question._(
      questionId: json["question_id"],
      prompt: json["prompt"],
      correctAnswerLabel: json["correct_answer_label"],
    );
  } 
}