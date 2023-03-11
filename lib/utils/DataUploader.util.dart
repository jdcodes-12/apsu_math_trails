import "dart:convert";
import "package:math_trails/utils/firebase/firestore/firestore.service.dart";
import "package:math_trails/models/trail.model.dart";
import "package:flutter/services.dart" show rootBundle;

/*
 * Utility class designed to quickly update json data
 * to the firestore.
 */

class DataUploader {

  static Future<void> uploadData() async {
    late List<Trail> trails;

    print("Uploding data before app loads...");

    final trailsJsonString = await rootBundle.loadString('assets/data/trail.data.json');
    final parsedJson = json.decode(trailsJsonString);

    trails = List<Trail>.from(parsedJson.map((trail) => Trail.fromJson((trail))));
  
    await batchWriteTrailData(trails);
  }
}