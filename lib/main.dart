import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/constan/colors_constant.dart';
import 'package:note_app/model/note_model.dart';
import 'package:provider/provider.dart';
import 'package:note_app/views/notes_view.dart';
void main()async{
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.initFlutter();
  await Hive.openBox(kNotsBox);
  runApp(NoteApp());

}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[
        BlocProvider(
        create: (context) => AddNoteCubit()),
        ],
       child:  MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      // fontFamily: 'Poppins'
      ),
      home: NotesView(),
      )); 
   
    
  }
}