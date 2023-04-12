import 'package:flutter/material.dart';
import 'package:resum_app/Menu_Screen/Resignation_Letter/Job_Resignation/modal_Class.dart';

class Rscreen extends StatefulWidget {
  const Rscreen({Key? key}) : super(key: key);

  @override
  State<Rscreen> createState() => _RscreenState();
}

class _RscreenState extends State<Rscreen> {
  @override
  Widget build(BuildContext context) {
    Modal_class d1=ModalRoute.of(context)!.settings.arguments as Modal_class;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Job Resignation Letter",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.pink.shade50,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 25),
            child: Container(
              height: 600,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(blurRadius: 10, color: Colors.black38)
                  ]),
              child: Padding(
                padding: EdgeInsets.all(10.8),
                child:
                   Text(
                    "To the attention of whom it may concern:\n\n\nThe reason for this letter is to communicate my decision to resign from the position of${d1.job} whish I have held in the last ${d1.years_w} years in the company.\n\nI want to clarify that my time within ${d1.com_name} has been extremely satisfactory at a professional level and that being part of the team has allowed me to constantly learn.\n\nI appreciate the opportunity that has been given to me so far in this company and i wish the best to all colleagues.\n\n\nComplying with the ${d1.notice} days notice.I notify that my last day of work will be the day ${d1.last_w}.\n\n\nSincerely,\n${d1.j_name}\n${d1.date}",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
        ),
        ),
      );
  }
}
