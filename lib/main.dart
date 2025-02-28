import 'package:flutter/material.dart';
import 'package:flutter_app/edit_page.dart';

  String name = "";
  String category = "";
  String duration = "";
  bool isDone = false;
  IconData isDone_icon = Icons.check_box_outline_blank_sharp;
  Color bg = Colors.white;


void main (){
  runApp(const MaterialApp(
    home: MyApp()
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  Color colors = Colors.black;
  List<MaterialColor> colors_list = [Colors.red, Colors.purple, Colors.yellow, Colors.pink, Colors.cyan, Colors.green,];
  int i = 1;


  void IsDone(){
    setState(() {
      if(!isDone){isDone = true; isDone_icon = Icons.check_box_outlined;}
      else{isDone = false; isDone_icon = Icons.check_box_outline_blank_sharp;};
    });
  }

  void Task(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
     return  Scaffold(
       appBar: AppBar(
         actions: [IconButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => addtask()));}, icon: Icon(Icons.plus_one),)],
       title:  const Text('My Tasks'),
         backgroundColor: Colors.grey,

       ),

backgroundColor: bg,
        body:
        ListView.builder(
          itemCount: Task_list.length,

        itemBuilder: (context, index){
          String task_name = Task_list.elementAt(index);
          return Column(
            // padding: const EdgeInsets.all(8),
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Center(child: Text('Name: $task_name', style: TextStyle(color: colors,),)),
                  ),

                  IconButton(onPressed: (){IsDone();}, icon: Icon(isDone_icon))

                ],
              ),],
          );
        },

     ));
  }}
