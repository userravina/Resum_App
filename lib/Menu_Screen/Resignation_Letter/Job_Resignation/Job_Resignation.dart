import 'package:flutter/material.dart';
import 'package:resum_app/Menu_Screen/Resignation_Letter/Job_Resignation/modal_Class.dart';

class Job_letter extends StatefulWidget {
  const Job_letter({Key? key}) : super(key: key);

  @override
  State<Job_letter> createState() => _Job_letterState();
}

class _Job_letterState extends State<Job_letter> {
  TextEditingController yourname = TextEditingController();
  TextEditingController com_name = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController job = TextEditingController();
  TextEditingController work = TextEditingController();
  TextEditingController notice = TextEditingController();
  TextEditingController last_work = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Job Resignation Letter",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.pink.shade50,
        body: Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: SingleChildScrollView(
            child: Container(
              height: 600,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(blurRadius: 10, color: Colors.black38)
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      child: Container(
                          width: 280,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: yourname,
                            autocorrect: true,
                            decoration: InputDecoration(
                                hintText: 'Enter Name ',
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.pink.shade200, width: 2)),
                                filled: true,
                                fillColor: Colors.pink.shade50),
                          )),
                    ),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: com_name,
                          autocorrect: true,
                          decoration: InputDecoration(
                              hintText: 'Company name',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: date,
                          autocorrect: true,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              hintText: 'Date',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: job,
                          autocorrect: true,
                          decoration: InputDecoration(
                              hintText: 'Job',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: work,
                          keyboardType: TextInputType.number,
                          autocorrect: true,
                          decoration: InputDecoration(
                              hintText: 'Years worked',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: notice,
                          autocorrect: true,
                          decoration: InputDecoration(
                              hintText: 'Notice days',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(keyboardType: TextInputType.number,
                          controller: last_work,
                          autocorrect: true,
                          decoration: InputDecoration(
                              hintText: 'Last day at work',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink.shade200, width: 2)),
                              filled: true,
                              fillColor: Colors.pink.shade50),
                        )),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: () {
                      String n = yourname.text;
                      String c = com_name.text;
                      String d = date.text;
                      String j = job.text;
                      String w = work.text;
                      String t = notice.text;
                      String l = last_work.text;
                      setState(() {
                        Modal_class d1 = Modal_class(j_name: n,com_name: c,date:d ,job: j,years_w: w,notice: t,last_w: l);
                        // Navigator.pushNamed(context, 'second', arguments: );
                        Navigator.pushNamed(context, 'r',arguments: d1);
                      });
                    }, child: Text("Create",),style: ElevatedButton.styleFrom(backgroundColor: Colors.pink)),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
