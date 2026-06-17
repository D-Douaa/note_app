import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_items.dart';
class NotesViewList extends StatelessWidget {
  const NotesViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding:EdgeInsets.zero,
        itemBuilder: (context,index){
      
        return  const CustomNoteItems();
        
      }),
    );
  }
}