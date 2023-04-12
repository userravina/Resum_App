import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resum_app/Menu_Screen/personal_info/Show_info/dataModal.dart';

class resum_App extends StatefulWidget {
  const resum_App({Key? key}) : super(key: key);

  @override
  State<resum_App> createState() => _resum_AppState();
}

class _resum_AppState extends State<resum_App> {
  var tetKey = GlobalKey<FormState>();
  TextEditingController textName = TextEditingController();
  TextEditingController Hobies = TextEditingController();
  TextEditingController textAddres = TextEditingController();
  TextEditingController textMoblie_no = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  List l1 = ["name", "address", "Mobile"];
  List eduList = ["BE", "BTECH", "BCA", "BCOM", "MBBS", "diploma", "MD"];
  String? select_edu;
  String select_Ran = '';
  String? select_Exp = "";
  bool isExp = false;
  List SkillList = [false, false, false, false, false];
  RangeValues _currentRangeValues = const RangeValues(10000, 30000);
String? path;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: tetKey,
      child: WillPopScope(
        onWillPop: back,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Resuma App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
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
              ),
            ],
            backgroundColor: Colors.pinkAccent,
            elevation: 5,
          ),
          backgroundColor: Colors.pink.shade50,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                path == null
                    ? CircleAvatar(
                    radius: 60,child: Text("add",style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.pink.shade100,
                    )
                    : CircleAvatar(
                  radius: 60,
                  backgroundImage: FileImage(File("${path}")),
                ),
                TextButton(style: TextButton.styleFrom(backgroundColor: Colors.pink,),
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                              'What do you want to take photos from?',),
                          actions: [
                            ElevatedButton(
                              onPressed: () async {
                                ImagePicker imagepicker = ImagePicker();
                                XFile? xfile = await imagepicker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  path = xfile!.path;
                                });
                              },
                              child: Text("Galary"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () async {
                                ImagePicker imagepicker = ImagePicker();
                                XFile? xfile = await imagepicker.pickImage(
                                    source: ImageSource.camera);
                                setState(() {
                                  path = xfile!.path;
                                });
                              },
                              child: Text("Camara"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Picke Image",style: TextStyle(color: Colors.white),)
                ),
                ExpansionTile(
                  maintainState: true,
                  title: Text(
                    "Personal Infomatopn",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.person_add_alt, color: Colors.black),
                  backgroundColor: Colors.white,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: textName,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pinkAccent, width: 1)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.pinkAccent.shade100,
                                )),
                                labelText: "Full Name",
                                labelStyle:
                                    TextStyle(color: Colors.pinkAccent)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter the value";
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                              controller: textAddres,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.pinkAccent, width: 1)),
                                  border: OutlineInputBorder(),
                                  labelText: "Address",
                                  labelStyle:
                                      TextStyle(color: Colors.pinkAccent)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter the value";
                                }
                              }),
                          SizedBox(height: 10),
                          TextFormField(
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              controller: textMoblie_no,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.pinkAccent,
                                    width: 1,
                                  )),
                                  border: OutlineInputBorder(),
                                  labelText: "Mobile No",
                                  labelStyle:
                                      TextStyle(color: Colors.pinkAccent)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter the value";
                                }
                              }),
                          SizedBox(height: 10),
                          TextFormField(
                              controller: textEmail,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.pinkAccent, width: 1)),
                                  border: OutlineInputBorder(),
                                  labelText: "Email",
                                  labelStyle:
                                      TextStyle(color: Colors.pinkAccent)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter the value";
                                }
                              }),
                        ],
                      ),
                    ),
                  ],
                  collapsedIconColor: Colors.pink,
                  collapsedTextColor: Colors.black,
                ),
                ExpansionTile(
                  maintainState: true,
                  title: Text(
                    "Hobies",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.h_plus_mobiledata_sharp, color: Colors.black),
                  backgroundColor: Colors.white,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: Hobies,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pinkAccent, width: 1)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.pinkAccent.shade100,
                                    )),
                                labelText: "Hobies",
                                labelStyle:
                                TextStyle(color: Colors.pinkAccent)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter the value";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                  collapsedIconColor: Colors.pink,
                  collapsedTextColor: Colors.black,
                ),
                ExpansionTile(
                  title: Text(
                    "Education Infomatopn",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.cast_for_education_outlined,
                      color: Colors.black),
                  backgroundColor: Colors.white,
                  children: [
                    DropdownButton(
                      items: eduList.map((e) => DropdownMenuItem(child: Center(child: Text("$e")),value: e,)).toList(),
                      value: select_edu,
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      hint: Center(
                          child: Text(
                        "====Selecte====",
                        style: TextStyle(color: Colors.black),
                      )),
                      onChanged: (value) {
                        setState(() {
                          select_edu = value as String;
                        });
                      },
                      iconEnabledColor: Colors.pinkAccent,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ExpansionTile(
                  title: Text(
                    "Selecte Language",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.add_box_outlined, color: Colors.black),
                  trailing: Switch(
                    activeColor: Colors.pink,
                    value: isExp,
                    onChanged: (value) {
                      setState(() {
                        isExp = value;
                      });
                    },
                  ),
                  children: [
                    Visibility(
                      visible: isExp,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: SkillList[0],
                                  onChanged: (value) {
                                    setState(() {
                                      SkillList[0] = value!;
                                    });
                                  },
                                  activeColor: Colors.pink),
                              Text("Dart"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: SkillList[1],
                                  onChanged: (value) {
                                    setState(() {
                                      SkillList[1] = value!;
                                    });
                                  },
                                  activeColor: Colors.pink),
                              Text("Swich "),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: SkillList[2],
                                  onChanged: (value) {
                                    setState(() {
                                      SkillList[2] = value!;
                                    });
                                  },
                                  activeColor: Colors.pink),
                              Text("Java "),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: SkillList[3],
                                  onChanged: (value) {
                                    setState(() {
                                      SkillList[3] = value!;
                                    });
                                  },
                                  activeColor: Colors.pink),
                              Text("HTML"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: SkillList[4],
                                  onChanged: (value) {
                                    setState(() {
                                      SkillList[4] = value!;
                                    });
                                  },
                                  activeColor: Colors.pink),
                              Text("PHP"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "Selecte Gender",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.select_all, color: Colors.black),
                  backgroundColor: Colors.pinkAccent.shade100,
                  children: [
                    Container(
                      color: Colors.white,
                      child: RadioListTile(
                          value: "Male",
                          groupValue: select_Ran,
                          onChanged: (value) {
                            setState(() {
                              select_Ran = value!;
                            });
                          },
                          title: Text("Male"),
                          activeColor: Colors.pink),
                    ),
                    Container(
                      color: Colors.white,
                      child: RadioListTile(
                        value: "Female",
                        groupValue: select_Ran,
                        onChanged: (value) {
                          setState(() {
                            select_Ran = value!;
                          });
                        },
                        title: Text("Female"),
                        activeColor: Colors.pink,
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "Selecte your Salary",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.add_box, color: Colors.black),
                  children: [
                    RangeSlider(
                      values: _currentRangeValues,
                      max: 35000,
                      divisions: 10,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                      min: 10000,
                      inactiveColor: Colors.white,
                      activeColor: Colors.pinkAccent,
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "Experiance",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(Icons.shopping_bag, color: Colors.black),
                  backgroundColor: Colors.pinkAccent.shade100,
                  children: [
                    Container(
                      color: Colors.white,
                      child: RadioListTile(
                          value: "1-2 year",
                          groupValue: select_Exp,
                          onChanged: (value) {
                            setState(() {
                              select_Exp = value!;
                            });
                          },
                          title: Text("1-2 year"),
                          activeColor: Colors.pink),
                    ),
                    Container(
                      color: Colors.white,
                      child: RadioListTile(
                        value: "2-3 year",
                        groupValue: select_Exp,
                        onChanged: (value) {
                          setState(() {
                            select_Exp = value!;
                          });
                        },
                        title: Text("2-3 year"),
                        activeColor: Colors.pink,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: RadioListTile(
                          value: "4-5 year",
                          groupValue: select_Exp,
                          onChanged: (value) {
                            setState(() {
                              select_Exp = value!;
                            });
                          },
                          title: Text("4-5 year"),
                          activeColor: Colors.pink),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    var name = textName.text;
                    var hobies = Hobies.text;
                    var address = textAddres.text;
                    var Mobile = textMoblie_no.text;
                    var Email = textEmail.text;
                    var skill = "";
                    if (SkillList[0] == true) {
                      skill = "$skill Dart";
                    }
                    if (SkillList[1] == true) {
                      skill = "$skill Swich";
                    }
                    if (SkillList[2] == true) {
                      skill = "$skill Java";
                    }
                    if (SkillList[3] == true) {
                      skill = "$skill HTML";
                    }
                    if (SkillList[4] == true) {
                      skill = "$skill PHP";
                    }
                    if (tetKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("data sucessfully"),
                        backgroundColor: Colors.pink,
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: "undo",
                          onPressed: () {},
                        ),
                      ));
                      setState(() {
                        DataModal d = DataModal(
                          name: name,
                          add: address,
                          email: Email,
                          cno: Mobile,
                          skill: skill,
                          exp: select_Exp,
                          gender: select_Ran,
                          edu: select_edu,
                          Salary: _currentRangeValues.start.round().toString(),
                          end: _currentRangeValues.end.round().toString(),
                          path: path,
                          Hobies: hobies,
                        );
                        Navigator.pushNamed(context, 'second', arguments: d);
                      });
                    }
                  },
                  child: Text("Check Information"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ShowExitButton() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("you are exit in first Screen !"),
          content: Row(mainAxisSize: MainAxisSize.min, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text("Yes"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ]),
        );
      },
    );
  }
  Future<bool> back() async {
    ShowExitButton();
    return await false;
  }
}
