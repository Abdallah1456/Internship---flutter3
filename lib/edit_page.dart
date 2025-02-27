import 'package:flutter/material.dart';
import 'main.dart';

Map task = {"name": name, "Duration": duration, "Category": category};
List Task_list = [];

void editt_page(){
  runApp(const MaterialApp(
      home: addtask()
  ));
}


class addtask extends StatefulWidget {
  const addtask({super.key});

  @override
  State<addtask> createState() => _addtaskState();
}


class _addtaskState extends State<addtask> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _timecontroller = TextEditingController();
  final TextEditingController _categorycontroller = TextEditingController();


  void AddTask(){
    setState(() {
      name = _namecontroller.text;
      duration = _timecontroller.text;
      category = _categorycontroller.text;
      Task_list.add(task["name"]);
      if(name.isNotEmpty & duration.isNotEmpty & category.isNotEmpty){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: bg,
      appBar: AppBar(
        title:  const Text('Add Task'),
        backgroundColor: Colors.grey,

      ),


      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 360),
            child: TextField(decoration: const InputDecoration(hintText: "Name"),textAlign: TextAlign.center, controller: _namecontroller,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 360, vertical: 15),
            child: TextField(decoration: const InputDecoration(hintText: "Time"),textAlign: TextAlign.center, controller: _timecontroller,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 360, vertical: 10),
            child: TextField(decoration: const InputDecoration(hintText: "Category"),textAlign: TextAlign.center, controller: _categorycontroller,),
          ),

          Container(
              color: Colors.brown[200],
              child:  TextButton(onPressed: (){
                AddTask();

                }, child:  const Text("Add task  "), )),

        ],
      ),
    );
  }}
