import 'package:math_trails/models/info_section.model.dart';
import 'package:math_trails/models/objective_section.model.dart';
import 'package:math_trails/models/wrap_up_section.model.dart';

class Stop {
  final String parentTrailName;
  final int stopId;
  final String stopNameFull;
  final String stopNameShort;
  final String stopDescriptionFull;
  final String stopDescriptionShort;
  final InfoSection infoSection;
  final ObjectiveSection objectiveSection;
  final WrapUpSection wrapUpSection;

  Stop._({
    required this.parentTrailName,
    required this.stopId,
    required this.stopNameFull,
    required this.stopNameShort,
    required this.stopDescriptionFull,
    required this.stopDescriptionShort,
    required this.infoSection,
    required this.objectiveSection,
    required this.wrapUpSection,
  });

  factory Stop.fromJson(Map<String, dynamic> json) =>
    Stop._(
      parentTrailName: json['parent_trail_name'],
      stopId: json['stop_id'],
      stopNameFull: json['stop_name_full'],
      stopNameShort: json['stop_name_short'],
      stopDescriptionFull: json['stop_description_full'],
      stopDescriptionShort: json['stop_description_short'],
      infoSection: InfoSection.fromJson(json['info_section']),
      objectiveSection: ObjectiveSection.fromJson(json['objective_section']),
      wrapUpSection: WrapUpSection.fromJson(json['wrap_up_section']),
    );

  Map<String, dynamic> toJson() => 
    {
      "parent_trail_name": parentTrailName,
      "stop_id": stopId,
      "stop_name_full": stopNameFull,
      "stop_name_short": stopNameShort,
      "stop_description_full": stopDescriptionFull,
      "stop_description_short": stopDescriptionShort,
      "info_section": infoSection.toJson(),
      "objective_section": objectiveSection.toJson(),
      "wrap_up_section": wrapUpSection.toJson(),
    };
}