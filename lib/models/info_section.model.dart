class InfoSection {
  final String stopId;
  final String sectionHeader;
  // final List<Question> questions;

  InfoSection._({
    required this.stopId,
    required this.sectionHeader,
  });

  factory InfoSection.fromJson(Map<String, dynamic> json) {
    return InfoSection._(
      stopId: json["stop_id"],
      sectionHeader: json["section_header"]
    ); 
  }

  Map<String, dynamic> toJson() => {
    "stop_id": stopId,
    "section_header": sectionHeader,
  };
}