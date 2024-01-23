import 'package:code_struct/view/utils/config/app_images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Add_cart.dart';
import 'fonts.dart';

class Lottie_animation_splash extends StatefulWidget {
  const Lottie_animation_splash({super.key});

  @override
  State<Lottie_animation_splash> createState() => _Lottie_animation_splashState();
}

class _Lottie_animation_splashState extends State<Lottie_animation_splash> {
@override
  void initState() {
  Future.delayed(const Duration(seconds: 4),() {
    Navigator.push(context, MaterialPageRoute(builder:(context) => const Google_Fonts(),));
  },);
    super.initState();
  }
  @override


  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Lottie.asset(Appanime.Lottie1),
      ),
    );
  }
}
