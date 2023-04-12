import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Download",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.pink.shade50,
      body: Center(
          child: Text(
        "You have not downloaded any PDF\n                         file yet!",
        style: TextStyle(
            color: Colors.pink,fontSize: 15, fontWeight: FontWeight.w500),
      )),
    ));
  }
}
