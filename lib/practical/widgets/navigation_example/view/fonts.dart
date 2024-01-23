import 'package:flutter/material.dart';

class Google_Fonts extends StatefulWidget {
  const Google_Fonts({super.key});

  @override
  State<Google_Fonts> createState() => _Google_FontsState();
}

class _Google_FontsState extends State<Google_Fonts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hello world",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "hello world",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
