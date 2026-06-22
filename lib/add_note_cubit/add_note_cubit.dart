import 'package:hive/hive.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constan/colors_constant.dart';
import 'package:note_app/model/note_model.dart';

 class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try{
    var notesbox=Hive.box<NoteModel>(kNotsBox);
    emit(AddNoteSuccess());
    await notesbox.add(note);
      
    }catch(e){
      AddNoteFailure(e.toString());
    }

  }


}