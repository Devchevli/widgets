import 'dart:async';

import 'package:flutter/material.dart';

class stful extends StatefulWidget {
  const stful({super.key});

  @override
  State<stful> createState() => _stfulState();
}

class _stfulState extends State<stful> {
  int count = 0;

  void setCount() {
    setState(() {
      count++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("chevli");
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        count++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statefull"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateTime.now().hour.toString() +
                " : " +
                DateTime.now().minute.toString() +
                " : " +
                DateTime.now().second.toString()),
            const Text("Count"),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
