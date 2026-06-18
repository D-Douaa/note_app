import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_note_view_appbar.dart';
import 'package:note_app/views/widgets/custome_textfield.dart';
class EditNotBodyView extends StatelessWidget {
  const EditNotBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),child:Column(children: [
      SizedBox(height: 50,),
      CustomeNoteViewAppbar(title: 'Edit Note',icon: Icons.check,),
       SizedBox(height: 50,),
       CustomeTextfield(hint: 'Title'),
        SizedBox(height: 20,),
        CustomeTextfield(hint: 'content',maxline: 5,)
    ],));
  }
}