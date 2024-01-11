import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/firestore.dart';

class BarangBuah extends StatefulWidget {
  const BarangBuah({Key? key}) : super(key: key);

  @override
  _BarangBuahState createState() => _BarangBuahState();
}

class _BarangBuahState extends State<BarangBuah> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController textController = TextEditingController();

  void openNoteBox({String? docID}){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff008c24)),
            onPressed: (){
              if (docID == null){
                firestoreService.addNote(textController.text);
              } else {
                firestoreService.updateNote(docID, textController.text);
              }
              textController.clear();
              Navigator.pop(context);
            },
            child: const Text("Tambah Buah"),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Buah"),backgroundColor: Color(0xff008c24),),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),
        backgroundColor: Color(0xff008c24),

      ),
      backgroundColor: Color(0xff040018),
      body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getNotesStream(),
          builder: (context,snapshot){
            if (snapshot.hasData){
              List noteList = snapshot.data!.docs;
              return ListView.builder(
                itemCount: noteList.length,
                  itemBuilder: (context,index){
                    DocumentSnapshot document = noteList[index];
                    String docID = document.id;

                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    String noteText = data['note'];
                    return ListTile(
                      title: Text(noteText, style: TextStyle(color: Colors.white),),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => openNoteBox(docID: docID),
                            icon: const Icon(Icons.settings,color: Colors.green,),
                          ),
                          IconButton(
                            onPressed: () => firestoreService.deleteNote(docID),
                            icon: const Icon(Icons.delete_forever_rounded,color: Colors.red,),
                          ),
                        ]
                      ),
                    );
                  },
                  );
            } else {
              return const Text("No notes..");
            }
          },
        )
    );
  }
}
