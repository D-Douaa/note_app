import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_button_sheet.dart';
import 'package:note_app/views/widgets/custome_textfield.dart';
class AddBottomNotesheet extends StatelessWidget {
  const AddBottomNotesheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 32,),
        CustomeTextfield(hint: 'title',),
         SizedBox(height: 16,),
        CustomeTextfield(hint: 'content',maxline: 5,),
        SizedBox(height: 50,),
        CustomeButtonSheet(),
        SizedBox(height: 16,)],),
    );
  }
}