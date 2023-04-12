import 'package:flutter/material.dart';

class resume_post extends StatefulWidget {
  const resume_post({Key? key}) : super(key: key);

  @override
  State<resume_post> createState() => _resume_postState();
}

class _resume_postState extends State<resume_post> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search....',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.black),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r1.jpeg"),
                      SizedBox(width: 20,),
                      Photos("assets/images/r2.jpeg"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r3.jpeg"),                      SizedBox(width: 20,),

                      Photos("assets/images/r4.jpeg"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r5.jpeg"),                      SizedBox(width: 20,),

                      Photos("assets/images/r6.jpeg"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r9.jpeg"),                      SizedBox(width: 20,),

                      Photos("assets/images/r10.jpeg"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r11.jpeg"),                      SizedBox(width: 20,),

                      Photos("assets/images/r12.jpeg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Photos("assets/images/r13.jpeg"),                      SizedBox(width: 20,),

                      Photos("assets/images/r14.jpeg"),

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
  Widget Photos(String iphoto)
  {
    return Container(
        height: 200,
        width: 150,
        child: Image.asset("$iphoto",fit: BoxFit.cover),
        decoration: BoxDecoration(border: Border.all(color: Colors.pink.shade50,width: 2))
    );
  }
}
