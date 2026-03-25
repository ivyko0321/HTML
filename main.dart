import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text("Hello"),
                ),
              ),

              Text("第一行"),
              Text("第二行"),
              Text("第三行"),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("左邊"),
                  Text("中間"),
                  Text("右邊"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}