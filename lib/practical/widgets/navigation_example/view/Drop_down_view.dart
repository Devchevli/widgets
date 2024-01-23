import 'package:flutter/material.dart';

class DropDownpage extends StatefulWidget {
  const DropDownpage({super.key});

  @override
  State<DropDownpage> createState() => _DropDownpageState();
}

class _DropDownpageState extends State<DropDownpage> {
  String value = "Lion";
  List<String> items = ["Lion", "Tiger", "Elephant", "Bear", "Elephant"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        color: Colors.white,
        child: DropdownButton(
            value: value,
            items: items
                .map((String e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                value = newValue!;
              });
            }),
      ),
    );
  }
}
