class InfoSection {
  final String stopId;
  final String sectionHeader;
  final String sectionBody;

  InfoSection._({
    required this.stopId,
    required this.sectionHeader,
    required this.sectionBody,
  });

  factory InfoSection.fromJson(Map<String, dynamic> json) {
    return InfoSection._(
      stopId: json["stop_id"],
      sectionHeader: json["section_header"],
      sectionBody: json["section_body"],
    ); 
  }

  Map<String, dynamic> toJson() => {
    "stop_id": stopId,
    "section_header": sectionHeader,
    "section_body": sectionBody,
  };
}