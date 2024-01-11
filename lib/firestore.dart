import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreService {
  //Create
  final CollectionReference notes = 
      FirebaseFirestore.instance.collection('notes');

  Future<void> addNote(String note){
    return notes.add({
      'note':note,
      'timestamp': Timestamp.now(),
    });
  }
  //Read
Stream<QuerySnapshot> getNotesStream(){
    final notesStream =
        notes.orderBy('timestamp',descending: true).snapshots();
    return notesStream;
}
  //Update
Future<void>updateNote(String docID, String newNote){
    return notes.doc(docID).update({
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
}

Future<void>deleteNote(String docID){
    return notes.doc(docID).delete();
}
  //Delete
}