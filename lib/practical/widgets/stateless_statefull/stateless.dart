import 'package:flutter/material.dart';

class Stless_page extends StatelessWidget {
   Stless_page({super.key});

  int count = 10;
  void setcount(){
    count++;
  }

  @override
  Widget build(BuildContext context) {
    print("dev");
    return Scaffold(
      appBar: AppBar(
        title: Text("stateless"),
        centerTitle: true,
      ),
      body:  Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("count"),Text(count.toString(),style: TextStyle(fontSize: 25),)])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
