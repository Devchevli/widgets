import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_picker extends StatefulWidget {
  const Image_picker({super.key});

  @override
  State<Image_picker> createState() => _Image_pickerState();
}

class _Image_pickerState extends State<Image_picker> {
  File? pickImage;
  XFile? image;

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.black,
            child: Stack(
              children: [
                if (pickImage != null)
                  Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(pickImage!), fit: BoxFit.cover)),
                  ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      onPressed: () async {

                        final image =
                            await picker.pickImage(source: ImageSource.gallery );
                        if (image != null) {
                          pickImage = File(image.path);
                          setState(() {});
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white
                      ),

                      child: const Text("Image picker",style: TextStyle(color: Colors.black),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
