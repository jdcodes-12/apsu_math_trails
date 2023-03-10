class Answer {
  final String response;
  final String label;

  Answer._({
    required this.response,
    required this.label,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer._(
      response: json["response"],
      label: json["label"],
    );
  }

  Map<String, dynamic> toJson() => {
    "response": response,
    "label": label,
  };
}