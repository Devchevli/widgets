import 'package:code_struct/practical/widgets/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountProviderWidget extends StatelessWidget {
  CountProviderWidget({super.key});

  int count = 10;

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("dev");
    return Scaffold(
      appBar: AppBar(
        title: const Text("stateless"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const Text("count"),
            Consumer<CountProvider>(
              builder: (BuildContext contex, value, child) {
                return Text(
                  value.count.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 25),
            )
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setcount();
          print(countProvider.count);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
