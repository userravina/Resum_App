import 'package:flutter/material.dart';

class Interview extends StatefulWidget {
  const Interview({Key? key}) : super(key: key);

  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Interview Questions",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.pink,
              child: Padding(padding: EdgeInsets.all(15.8),
                child: Image.asset("assets/images/meeting.png",
                    color: Colors.white, alignment: Alignment.center),
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.pink.shade50,
              child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                child: Text(
                  "1.What can you tell me about yourself?",
                  style: TextStyle(color: Colors.black,fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 160,
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Talk about yourself in summary and avoid rambling.your detailed work history can be found on your CV,after all,so focus on elements that you want to highlight rather than going through everyting.it is ok to discuss your personality and what ambitions you have.ldeally,you will give the interview a positive insight into how you would fit in as an employee.",
                  style: TextStyle(color: Colors.black, ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.pink.shade50,
              child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                child: Text(
                  "2.Can you list your strengths?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 190,
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "An exhaustive list of adjective,such as 'capable','hard-working' or 'diligent',won't really portray you will because anyone  can make such claims about themselves. instead,think about three things that you do well and give concrete examples.if you are a strong organiser,for example,then talk about a project that you coordinated,or a new procedure that you formulated.",
                  style: TextStyle(color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.pink.shade50,
              child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                child: Text(
                  "3.Why are you leaving or have left your job?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "When asked about why you are moving on, stick with the facts,be direct and focus your interview answer on the future,especially if your leaving wasn't under the best of circumstances.if you are employed,focus on what you want inyour next job:After two years,I made the decision to look for a company that is team-focused,where I can add my experience.",
                  style: TextStyle(color: Colors.black, ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.pink.shade50,
              child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                child: Text(
                  "4.When were you most satisfied in your job?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "The interview who asks,when were you most satisfiled in your job? wants to know what motivates you.if you can relate an example of a job or project when you were excited,the interview will gwt an idean of your preferences.i was very satisifiled in may last job,because i worked directly with the customers part of the job for me.",
                  style: TextStyle(color: Colors.black, ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.pink.shade50,
              child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                child: Text(
                  "5.How do you handle stress and pressure?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "What do you want to work here things don't go smoothly at work? the way to respond to this qaestion is to give an example of how you have handled stress in a previous job.",
                  style: TextStyle(color: Colors.black, ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    ));
  }
}
