import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_note_view_appbar.dart';
import 'package:note_app/views/widgets/custom_note_items.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(height: 50,),
        CustomeNoteViewAppbar(),
        CustomNoteItems()],),
    );
  }
}