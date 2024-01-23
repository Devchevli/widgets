import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  Future<List> fetchData() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    print(response.statusCode);

    var data = jsonDecode(response.body.toString());
    print(data);
    if (response.statusCode == 200) {
      return data;
    } else {
      print(response.statusCode);
    }
    return data;
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: FutureBuilder(
          future: fetchData(), builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if(snapshot.connectionState == ConnectionState.done){
                return  SafeArea(child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile();
                  },
                ));
            }
            return SizedBox();
        },

        ),
      ),
    );
  }
}
