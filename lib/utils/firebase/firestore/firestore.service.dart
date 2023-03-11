
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:math_trails/models/stop.model.dart';
import 'package:math_trails/models/trail.model.dart';

var firestore = FirebaseFirestore.instance;

Future<void> batchWriteTrailData(List<Trail> trails) async {

  WriteBatch batch = firestore.batch();
  final trailsCollection = firestore.collection("trails");

  for (final trail in trails) {
    // add trail json to batch write
    final trailRef = trailsCollection.doc('Trail ${trail.trailId}');
    batch.set(trailRef, trail.toJson());

    // TODO: create stop subcollection in Firestore
  }
  
  // Commit the batches.
  batch
    .commit()
    .then((value) => print("Batch writing succeed. Enjoy math trails!"))
    .onError((error, stackTrace) => print("Batch writing failed: $error\n $stackTrace"));
}