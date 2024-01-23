import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class asyncronous_prgm extends StatefulWidget {
  const asyncronous_prgm({super.key});

  @override
  State<asyncronous_prgm> createState() => _asyncronous_prgmState();
}

class _asyncronous_prgmState extends State<asyncronous_prgm> {
  String? data;

  Future<String> fetchData() async {
    return Future.delayed(Duration(seconds: 3), () {
      return data = "fetch Data";
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: FutureBuilder(
            future: fetchData(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: LinearProgressIndicator()
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: Text(data!),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else{
                return const SizedBox();
              }
            }),
      ),
    );
  }
}
