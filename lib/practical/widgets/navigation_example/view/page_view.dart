import 'package:flutter/material.dart';

class Page_view extends StatefulWidget {
  const Page_view({super.key});

  @override
  State<Page_view> createState() => _Page_viewState();
}

class _Page_viewState extends State<Page_view> {
  int activeindex = 0;
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: PageScrollPhysics(),
            onPageChanged: (val) {
              activeindex = val;
              setState(() {});
            },
            itemBuilder: (BuildContext context, int index) {},
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),child: Row(
              children: [],
            ),),
          ),
        ],
      ),
    );
  }
}
