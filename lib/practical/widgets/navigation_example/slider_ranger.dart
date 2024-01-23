import 'package:flutter/material.dart';

class SLider_ranger extends StatefulWidget {



  @override
  State<SLider_ranger> createState() => _SLider_rangerState();
}

class _SLider_rangerState extends State<SLider_ranger> {
      double value=0;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(

      body: Container(height: size.height,

        width: size.width,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Slider(label: value.toString(),activeColor: Colors.yellowAccent,
             min: 0,
             max: 100,
             value: value,
             onChanged: (val) {
               value = val;
               print(value);
               setState(() {});
             },
            inactiveColor: Colors.black,divisions: 5,)
         ], 
        ),

      ),
    );
  }
}
