class ObjectiveSection {
    final String stopId;
    final String sectionHeader;
    // final List<Question> questions;

    ObjectiveSection._({
      required this.stopId,
      required this.sectionHeader,
    });

    factory ObjectiveSection.fromJson(Map<String, dynamic> json) {
      return ObjectiveSection._(
        stopId: json["stop_id"],
        sectionHeader: json["section_header"]
      ); 
    }

    Map<String, dynamic> toJson() => {
      "stop_id": stopId,
      "section_header": sectionHeader,
    };
}