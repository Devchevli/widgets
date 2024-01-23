import 'package:flutter/material.dart';

import '../../../idea/models/fashion_designer.dart';

class Grid_view extends StatefulWidget {
  const Grid_view({super.key, required this.background});

  final String background;

  @override
  State<Grid_view> createState() => _Grid_viewState();
}

class _Grid_viewState extends State<Grid_view> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Color(0xff14213d),
        title: const Text(
          "Product List",
          style: TextStyle(color: Color(0xfffca311)),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.grey,
        child: GridView.builder(
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(widget.background),fit: BoxFit.cover)),

              );
            }),
      ),
    );
  }
}
