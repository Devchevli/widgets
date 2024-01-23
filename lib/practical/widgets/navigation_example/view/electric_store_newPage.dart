import 'package:flutter/material.dart';

import 'Add_cart.dart';

class New_page extends StatefulWidget {
  const New_page({super.key});

  @override
  State<New_page> createState() => _New_pageState();
}

class _New_pageState extends State<New_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Add_cart()));
        return true;
      },
      child: Scaffold(
          body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,

        ),
      )),
    );
  }
}
