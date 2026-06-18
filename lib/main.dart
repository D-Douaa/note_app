import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constan/colors_constant.dart';

import 'package:note_app/views/notes_view.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox(kNotsBox);
  runApp(NoteApp());

}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      // fontFamily: 'Poppins'
      ),
      home: NotesView(),
      );
    
  }
}