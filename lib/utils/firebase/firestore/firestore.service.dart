
import 'package:cloud_firestore/cloud_firestore.dart';

var firestore = FirebaseFirestore.instance;

Future<void> writeTrailJsonToFirestore(Map<String, dynamic> trailJson) async {
  // will expose the logic here to write to Firebase once
  // written in DataUploader
  // 
}

Future<void> uploadQuestionJsonToFirestore(Map<String, dynamic> json) async {
  // TODO: See if I can upload a question to firestore
}