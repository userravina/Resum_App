import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:printing/printing.dart';
import 'package:resum_app/Menu_Screen/personal_info/Show_info/dataModal.dart';
import 'package:resum_app/pdf_Screen/pdf.dart';

class Check_Information extends StatefulWidget {
  const Check_Information({Key? key}) : super(key: key);

  @override
  State<Check_Information> createState() => _Check_InformationState();
}

class _Check_InformationState extends State<Check_Information> {
  String? path;

  @override
  Widget build(BuildContext context) {
    DataModal d = ModalRoute.of(context)!.settings.arguments as DataModal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Check Information"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () async {
                  await Printing.layoutPdf(onLayout: (format) => generatePdf(d),);
                },
                child: Icon(Icons.save_alt_rounded))
          ],
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.pink.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child:
                    CircleAvatar(
                        radius: 60,
                        backgroundImage: FileImage(File("${d.path}")),
                      ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "1.Full Name :- ${d.name}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "2.Address :- ${d.add}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "3.Contacte :- ${d.cno}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "4.Email :- ${d.email}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "5.Education info :- ${d.edu}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "6.Skill :- ${d.skill}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "7.Gender :- ${d.gender}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "8.Hobies :- ${d.Hobies}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "9.Experiance :- ${d.exp}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "10.Salary :- ${d.Salary}-${d.end}",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  tileColor: Colors.pink.shade200,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
