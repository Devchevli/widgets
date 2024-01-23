import 'package:flutter/material.dart';

import '../../idea/models/fashion_designer.dart';
import '../../view/presentaton/home_screen.dart';

class Some_example extends StatefulWidget {
  const Some_example({super.key});

  @override
  State<Some_example> createState() => _Some_exampleState();
}

class _Some_exampleState extends State<Some_example> {
  // List item = [
  //   Colors.transparent,
  //   Colors.transparent,
  //   Colors.transparent,
  //   Colors.transparent,
  //   Colors.transparent,
  //
  // ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_screen(
                                    profile: details[index].profile,
                                    background: details[index].background,
                                    title: details[index].title,
                                    subtitle: details[index].subtitle,
                                    image: details[index].background,
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 100,
                        width: size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(details[index].background),
                                fit: BoxFit.cover,
                                opacity: 0.2)),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: 60,
                              height: 500,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(60),
                                image: DecorationImage(
                                  image: NetworkImage(details[index].profile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            details[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            details[index].subtitle,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: const Icon(Icons.next_plan_outlined,
                              color: Colors.white70, size: 25),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
