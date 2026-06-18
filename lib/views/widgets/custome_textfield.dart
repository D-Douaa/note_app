import 'package:flutter/material.dart';
import 'package:note_app/constan/colors_constant.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({super.key, required this.hint, this.maxline=1, this.onSaved});
final  String hint;
final int maxline;
final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty??true){
          return'Feiled is required';
        }
        else {return null;}
      },
      maxLines: maxline,
      
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]  ) {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color?? Colors.white));
  }
}
