import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_view.dart';
class CustomNoteItems extends StatelessWidget {
  const CustomNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){return EditNoteView();}));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              ListTile(
                title: Text( 'Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Text("build your carere with Douaa Damer",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 26)),
                ),
                trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete),color: Colors.black,iconSize: 30,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28,bottom: 18),
                child: Text('6/15/2026',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16)),
              )
            ],)
        ),
      ),
    );
  }
}