import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resum_app/Menu_Screen/Cover_Letter/cover.dart';
import 'package:resum_app/Menu_Screen/Download_Screen/Download.dart';
import 'package:resum_app/Menu_Screen/Interview_Ques/Interview_qu.dart';
import 'package:resum_app/Menu_Screen/Resignation_Letter/Job_Resignation/Job_Resignation.dart';
import 'package:resum_app/Menu_Screen/Resignation_Letter/Job_Resignation/resignation_create.dart';
import 'package:resum_app/Menu_Screen/personal_info/Show_info/Show_info.dart';
import 'package:resum_app/Menu_Screen/resume_phost/resume_post.dart';
import 'package:resum_app/Resum_Screen/Home_Screen.dart';
import 'package:resum_app/Menu_Screen/personal_info/personal_info.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => First_Screen(),
        'First': (context) => resum_App(),
        'second': (context) => Check_Information(),
        'letter': (context) => Cover_Screen(),
        'job': (context) => Job_letter(),
        'download': (context) => Download(),
        'interview': (context) => Interview(),
        'r': (context) => Rscreen(),
        'resume_post': (context) => resume_post(),
      },
      // home: Rscreen(),
    ),
  );
}
