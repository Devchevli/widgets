import 'package:code_struct/view/utils/config/app_images.dart';
import 'package:flutter/material.dart';

import '../../practical/widgets/navigation_example/grid_view.dart';

class Home_screen extends StatefulWidget {
  final String profile;
  final String background;
  final String title;
  final String subtitle;
  final String image;


  const Home_screen({
    super.key,
    required this.profile,
    required this.background,
    required this.title,
    required this.subtitle, required this.image,
  });

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Color(0xff14213d),
        title: const Text(
          "Fashion Designer",
          style: TextStyle(color: Color(0xfffca311)),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(widget.background),
                opacity: 0.2,
                fit: BoxFit.cover)),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                widget.title,
                style: const TextStyle(

                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),

                  CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(widget.profile),
              ),



            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                widget.subtitle,
                style: const TextStyle(
                   // backgroundColor: Color(0xfff4fdd9),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                   // color: Color(0xff6a8d73)
                  color: Colors.white
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  Grid_view(background: AppImages.back1,)));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.black,
                  elevation: 2,
                  // Background color
                ),
                child: const Text(
                  'show product',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
