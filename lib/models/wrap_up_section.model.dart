class WrapUpSection {
  final int stopId;
  final String sectionHeader;
  final String sectionBody;

  WrapUpSection._({
    required this.stopId,
    required this.sectionHeader,
    required this.sectionBody,
  });

  factory WrapUpSection.fromJson(Map<String, dynamic> json) =>
    WrapUpSection._(
      stopId: json["stop_id"],
      sectionHeader: json["section_header"],
      sectionBody: json["section_body"],
    );

  Map<String, dynamic> toJson() => 
    {
      "stop_id": stopId,
      "section_header": sectionHeader,
      "section_body": sectionBody,
    };
}