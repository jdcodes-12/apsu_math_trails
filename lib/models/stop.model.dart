import 'package:math_trails/models/info_section.model.dart';
import 'package:math_trails/models/objective_section.model.dart';
import 'package:math_trails/models/wrap_up_section.model.dart';

class Stop {
  final String parentTrailName;
  final int stopId;
  final String stopName_Full;
  final String stopName_Short;
  final String stopDescription_Full;
  final String stopDescription_Short;
  // final InfoSection infoSection;
  // final ObjectiveSection objectiveSection;
  // final WrapUpSection wrapUpSection;

  Stop._({
    required this.parentTrailName,
    required this.stopId,
    required this.stopName_Full,
    required this.stopName_Short,
    required this.stopDescription_Full,
    required this.stopDescription_Short,
    // required this.infoSection,
    // required this.objectiveSection,
    // required this.wrapUpSection,
  });

  factory Stop.fromJson(Map<String, dynamic> json) {
    return Stop._(
      parentTrailName: json['parent_trail_name'],
      stopId: json['stop_id'],
      stopName_Full: json['stop_name_full'],
      stopName_Short: json['stop_name_short'],
      stopDescription_Full: json['stop_description_full'],
      stopDescription_Short: json['stop_description_short'],
      // info secction
      // objective section
      // wrap up section
    );
  }

  
}