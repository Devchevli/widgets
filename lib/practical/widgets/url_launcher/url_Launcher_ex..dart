import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url_launcher extends StatefulWidget {
  const Url_launcher({super.key});

  @override
  State<Url_launcher> createState() => _Url_launcherState();
}

class _Url_launcherState extends State<Url_launcher> {
  browser({required String browserUrl}) async {
    Uri url = Uri(scheme: "http", path: browserUrl);
    await launchUrl(url);
  }

  message({required String messageUrl}) async {
    Uri url = Uri(scheme: "sms", path: messageUrl);
    await launchUrl(url);
  }

  email({required String emailUrl}) async {
    Uri url = Uri(scheme: "mailto", path: emailUrl);
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Url Launcher"),
      ),
      body: Column(children: [
        FloatingActionButton(
            onPressed: () async {
              browser(browserUrl: "https://www.youtube.com/");
              Uri uri = Uri.parse("https://www.youtube.com/");
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: const Icon(
              Icons.web,
            )),
        FloatingActionButton(
          onPressed: () async {
            message(messageUrl: "7016711700");
            Uri uri = Uri.parse("7016711700");
            if (await canLaunchUrl(uri)) {
              // await launchUrl(uri);
            }//
          },
          child: const Icon(Icons.message),
        ),
        FloatingActionButton(
            onPressed: () async {
              email(emailUrl: "patelneel9080@gmail.com");
              Uri uri = Uri.parse("patelneel9080@gmail.com");
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: const Icon(Icons.email))
      ]),
    );
  }
}
