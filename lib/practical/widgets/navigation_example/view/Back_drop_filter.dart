import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../view/utils/config/app_images.dart';

class Back_drop_filter extends StatefulWidget {
  const Back_drop_filter({super.key});

  @override
  State<Back_drop_filter> createState() => _Back_drop_filterState();
}

bool isTrue = false;

class _Back_drop_filterState extends State<Back_drop_filter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?cs=srgb&dl=pexels-pixabay-235986.jpg&fm=jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 10),
                child: Container(
                  height: 350,
                  width: 300,
                  color: Colors.white.withOpacity(0.1),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [

                          AnimatedOpacity(
                            opacity: (isTrue) ? 1 : 0,
                            duration: Duration(seconds: 1),
                            child: Container(
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: Colors.yellowAccent.withOpacity(.4)
                              ),

                            ),
                          ),
                          Text("Submit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,),),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                                splashColor: Colors.red,
                                highlightColor: Colors.yellowAccent,
                                onTap: () {
                                  isTrue = !isTrue;
                                  setState(() {});
                                }),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
