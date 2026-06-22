import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_button_sheet.dart';
import 'package:note_app/views/widgets/custome_textfield.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });


  @override
  
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        SizedBox(height: 32,),
        CustomeTextfield(hint: 'title',
        onSaved: (value)
         {
          title=value;
        },),
         SizedBox(height: 16,),
        CustomeTextfield(hint: 'content',maxline: 5,
        onSaved: (value)
         {
        subtitle=value;
        },),
        SizedBox(height: 50,),
        CustomeButtonSheet(onTap: () {
          if (formkey.currentState!.validate()){
            formkey.currentState!.save();
          }else{
            autovalidateMode=AutovalidateMode.always;
            setState(() {
              
            });
          }
        },),
        SizedBox(height: 16,)],),
    );
  }
}