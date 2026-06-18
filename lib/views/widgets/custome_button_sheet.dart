import 'package:flutter/material.dart';
import 'package:note_app/constan/colors_constant.dart';
class CustomeButtonSheet extends StatelessWidget {
  const CustomeButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: kPrimaryColor,),
      child:Center(child: Text('Add',style: TextStyle(color: Colors.black),),)
    );
  }
}