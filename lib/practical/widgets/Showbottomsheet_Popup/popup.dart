
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Stepper.dart';

class CustomPopup extends StatelessWidget {
  const CustomPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              icon: const Icon(Icons.list),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  24,
                ),
              ),
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  child: Row(
                    children: [
                      Text("Rating"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("⭐⭐⭐⭐⭐"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      const Text("Rating"),
                      const SizedBox(
                        width: 10,
                      ),
                      Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  child: Row(
                    children: [
                      Text("Rating"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("⭐⭐⭐⭐⭐"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  child: Row(
                    children: [
                      Text("Rating"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("⭐⭐⭐⭐⭐"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Stepper_page(),
                      ),
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.logout),
                      Text("Sign out"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
