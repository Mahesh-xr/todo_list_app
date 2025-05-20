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

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter a Task"
                ),
              ),
            ),
            MaterialButton(
            color: Colors.white,
            height: 50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: (){
              setState(() {
                task = textEditingController.text;
              });
            },
            child: Text("click"),),
            Text(task)
          ],
        ),
      ),
    );
  }
}