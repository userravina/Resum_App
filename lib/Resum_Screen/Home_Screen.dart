import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  List l1 = [
    "assets/images/pencil.png",
    "assets/images/cover-letter.png",
    "assets/images/email.png",
    "assets/images/letter.png" "assets/images/download.png",
    "assets/images/meeting.png",
    "assets/images/educational-video.png",
    "assets/images/messege.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Text(
              "Profyl.ong",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
            leading: Icon(Icons.menu, color: Colors.white, size: 30),
          ),
          backgroundColor: Colors.pink,
          actions: [
            PopupMenuButton(
              color: Colors.white,
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: Text(
                  "Setting",
                  style: TextStyle(color: Colors.pinkAccent.shade100),
                )),
                PopupMenuItem(
                    child: Text(
                  "help",
                  style: TextStyle(color: Colors.pinkAccent.shade100),
                )),
                PopupMenuItem(
                    child: Text(
                  "Save",
                  style: TextStyle(color: Colors.pinkAccent.shade100),
                )),
                PopupMenuItem(
                    child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.pinkAccent.shade100),
                )),
                PopupMenuItem(
                    child: Text(
                  "Rotate",
                  style: TextStyle(color: Colors.pinkAccent.shade100),
                )),
              ],
            )
          ],
        ),
        backgroundColor: Colors.pink.shade50,
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child:Column(
            children: [SizedBox(height: 10,),
              Text(
                "CREATE",
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),SizedBox(height: 10,),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, 'First');
                      },
                      child: Menu(
                          "    Create Resume",
                          Icon(Icons.colorize_sharp,
                              color: Colors.pinkAccent.shade200, size: 40))),
                  Spacer(),
                  InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, "letter");
                      },
                      child: Menu(
                          "      Cover Letter",
                          Icon(Icons.line_style_outlined,
                              color: Colors.pinkAccent.shade200, size: 40))),
                ],
              ),SizedBox(height: 20,),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, 'job');
                      },
                      child: Menu(
                          " Resignation Letter",
                          Icon(Icons.mail_outline_outlined,
                              color: Colors.pinkAccent, size: 45))),
                  Spacer(),
                  InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, "resume_post");
                      },
                      child: Menu(
                          "  Resume phost",
                          Icon(Icons.photo_camera_back_outlined,
                              color: Colors.pinkAccent, size: 45))),
                ],
              ),SizedBox(height: 10,),
              Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "OTHERS",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),SizedBox(height: 10,),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, 'download');
                          },
                          child: Menu(
                              "       Downloads",
                              Icon(Icons.save_alt_rounded,
                                  color: Colors.pinkAccent.shade200,
                                  size: 40))),
                      Spacer(),
                      InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, "interview");
                          },
                          child: Menu(
                              "Interview Questions",
                              Icon(Icons.question_answer_outlined,
                                  color: Colors.pinkAccent.shade200,
                                  size: 40))),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget Menu(String data, Icon Icon1) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.pink.shade50,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.pinkAccent.shade100, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(height: 10),
                Center(child: Icon1),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 9,
                      ),
                      child: Text(
                        "$data",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
