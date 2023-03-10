class Trail {
  final int trailId;
  final String trailName_Full;
  final String trailName_Short;
  final String trailDescription_Full;
  final String trailDescription_Short;
  final double durationInMinutes;
  // final List<Stop> stops;

  Trail._({
    required this.trailId,
    required this.trailName_Full,
    required this.trailName_Short,
    required this.trailDescription_Full,
    required this.trailDescription_Short,
    required this.durationInMinutes,
    // required this.stops,
  }); 

  factory Trail.fromJson(Map<String, dynamic> json) {
    return Trail._(
      trailId: json['trail_id'],
      trailName_Full: json['trail_name_full'],
      trailName_Short: json['trail_name_short'],
      trailDescription_Full: json['trail_description_full'],
      trailDescription_Short: json['trail_description_short'],
      durationInMinutes: json['duration_in_minutes'],
      // Stops
    );
  }

  Map<String, dynamic> toJson() => {
    "trail_id": trailId,
    "trail_name_full": trailName_Full,
    "trail_name_short": trailDescription_Short,
    "trail_description_full": trailDescription_Full,
    "trail_description_short": trailDescription_Short,
    "duration_in_minutes": durationInMinutes,
  };
}