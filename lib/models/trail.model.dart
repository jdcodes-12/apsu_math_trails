import 'package:math_trails/models/stop.model.dart';
import 'package:math_trails/utils/JsonParser.util.dart';

class Trail {
  final int trailId;
  final String trailNameFull;
  final String trailNameShort;
  final String trailDescriptionFull;
  final String trailDescriptionShort;
  final double durationInMinutes;
  final List<Stop> stops;

  Trail._({
    required this.trailId,
    required this.trailNameFull,
    required this.trailNameShort,
    required this.trailDescriptionFull,
    required this.trailDescriptionShort,
    required this.durationInMinutes,
    required this.stops,
  }); 

  factory Trail.fromJson(Map<String, dynamic> json) {
    List<dynamic> stopsJson = json['stops'];
    List<Stop> stops = 
      stopsJson.map((stop) => Stop.fromJson(stop)).toList();

    return Trail._(
      trailId: json['trail_id'],
      trailNameFull: json['trail_name_full'],
      trailNameShort: json['trail_name_short'],
      trailDescriptionFull: json['trail_description_full'],
      trailDescriptionShort: json['trail_description_short'],
      durationInMinutes: json['duration_in_minutes'],
      stops: stops,
    );
  }
  
  Map<String, dynamic> toJson() => {
    "trail_id": trailId,
    "trail_name_full": trailNameFull,
    "trail_name_short": trailDescriptionShort,
    "trail_description_full": trailDescriptionFull,
    "trail_description_short": trailDescriptionShort,
    "duration_in_minutes": durationInMinutes,
    "stops": stops.toString(),
  };
}