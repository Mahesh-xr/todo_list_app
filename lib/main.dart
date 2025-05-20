import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String task = "No Task";
  TextEditingController textEditingController = TextEditingController();
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("To do List"),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),

        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter a Task",
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.white,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    setState(() {
                      task = textEditingController.text;
                      tasks.add(task);
                      textEditingController.clear();
                    });
                  },
                  child: Text("click"),
                ),
              ],
            ),
          
          Flexible(
            child: ListView.builder(itemCount: tasks.length,itemBuilder: (context, index){
              return Row(
                 children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(tasks[index]),
                  ),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    tasks.remove(tasks[index]);
                  });
                },
                child: Icon(Icons.delete, color: Colors.red,),
                )
              ],
            );
            }),
          )

          ],
        ),
      ),
    );
  }
}
