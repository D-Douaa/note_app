import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_note_view_searchicon.dart';
class CustomeNoteViewAppbar extends StatelessWidget {
  const CustomeNoteViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
          fontSize: 20,color: Colors.white),),
          Spacer(),
          CustomeNoteViewSearchicon()],);
  }
}