import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'multiprovider.dart';

class MultiProvider_Screen extends StatefulWidget {
  const MultiProvider_Screen({super.key});

  @override
  State<MultiProvider_Screen> createState() => _MultiProvider_ScreenState();
}

class _MultiProvider_ScreenState extends State<MultiProvider_Screen> {
  @override
  Widget build(BuildContext context) {
    final multiProviderSlider = Provider.of<MultiProviderSlider>(
      context,
      listen: false,
    );
    print("dev");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MultiProviderSlider>(builder: (context, value, child) {
            return Slider(
                max: 1,
                min: 0,
                value: value.value,
                onChanged: (val) {
                  multiProviderSlider.setValue(val);
                });
          }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Consumer<MultiProviderSlider>(builder:(context,value,child) {
              return Container(
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.black.withOpacity(value.value),
                 ),
               );
             }),
             Consumer<MultiProviderSlider>(builder:(context,value,child) {
              return Container(
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.red.withOpacity(value.value),
                 ),
               );
             }),

            ],
          )
        ],
      ),
    );
  }
}
