import 'package:flutter/material.dart';

class Cover_Screen extends StatefulWidget {
  const Cover_Screen({Key? key}) : super(key: key);

  @override
  State<Cover_Screen> createState() => _Cover_ScreenState();
}

class _Cover_ScreenState extends State<Cover_Screen> {
  List name = [
    "Academic Advisor",
    "Diversity Manager",
    "Furniture Designer",
    "IT Project Manager",
    "Writer",
    "Software Developer",
    "Software Engineer",
    "Wab Developer",
    "Curriculum Developer",
    "Training Developer",
    "Account Manager",
    "Accountant",
    "Administrator",
    "Attorney",
    "Bank Manager",
    "Program Manager",
    "Psychologist",
    "Recruiter",
    "Security",
    "Veterinary Assistant",
  ];
  List color = [
    Colors.pink,
    Colors.brown,
    Colors.indigo,
    Colors.green,
    Colors.deepOrange,
    Colors.purpleAccent,
    Colors.pinkAccent.shade100,
    Colors.redAccent,
    Colors.pink,
    Colors.brown,
    Colors.indigo,
    Colors.green,
    Colors.deepOrange,
    Colors.purpleAccent,
    Colors.pinkAccent.shade100,
    Colors.redAccent,
    Colors.limeAccent,
    Colors.purpleAccent,
    Colors.pinkAccent.shade100,
    Colors.redAccent,
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Select Cover Letter",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return letter(name[index], color[index]);
          },
        ),
      ),
    );
  }

  Widget letter(String data, Color d1) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: ListTile(
        title: Center(
          child: Text(
            "$data",
            style: TextStyle(color: Colors.white),
          ),
        ),
        tileColor: d1,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.pinkAccent.shade100, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
