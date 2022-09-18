import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab10_t2/services/word_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'LOADING..........';

  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
// print(timeinstance.time);
    setState(() {
      time = timeinstance.time;
    });
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(60.0),
          child: Text(time.toString()),
        )
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http';
// import 'dart:convert';
// class Loading extends StatefulWidget {
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {
//   void getData() async {
//     final response = await
//     get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body);
//
//
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }