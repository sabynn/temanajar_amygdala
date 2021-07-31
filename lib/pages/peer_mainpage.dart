import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:temanajar/pages/journey.dart';
import 'package:temanajar/pages/quiz.dart';

import 'active_discussion.dart';

class PeerMainPage extends StatefulWidget {
  State createState() => _PeerMainPage();
}

class _PeerMainPage extends State<PeerMainPage> {
  String selectedSubject = "Matematika";
  String urlLearningVid = "assets/images/learning_videos1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59981A),
        title: Text(
          'Main Menu',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.notifications_none_rounded),
          SizedBox(width: 10),
          Container(
            width: 40,
            child: Image.asset(
              'assets/images/profile_pic_students.png',
            ),
          ),
        ],
      ),
      drawer: _mainMenu(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Text(
                      'Welcome, Rizki!',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF3D550C),
                      ),
                    ),
                    Card(
                      color: Color(0xFFBFDA90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Your current journey',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF3D550C),
                              ),
                            ),
                            subtitle: LinearPercentIndicator(
                              backgroundColor: Colors.white,
                              width:
                                  MediaQuery.of(context).size.height * 40 / 160,
                              animation: false,
                              lineHeight: 20.0,
                              leading: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "lvl 5",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF3D550C),
                                  ),
                                ),
                              ),
                              percent: 0.2,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Color(0xFFD4AF37),
                            ),
                            trailing: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return JourneyPage();
                                },),);
                              },
                              child: Text(
                                "details",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF3D550C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFF3D550C),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Active Discussion",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF3D550C),
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.record_voice_over_rounded,
                                      color: Colors.red,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 150,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    _card('KUYY BELAJAR TPS'),
                                    _card('NGAMBIS MATEMATIKA'),
                                    _card('fisika is fun!!!')
                                  ],
                                ),
                              ),
                              Center(
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF81B622),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Color(0xFFE7FFBC),
                                    size: 24.0,
                                  ),
                                  label: Text(
                                    "Start new Active Discussion",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color(0xFFE7FFBC),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFF3D550C),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Available Learning Videos in Class",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF3D550C),
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: DropdownButton<String?>(
                                  hint: Text("Select item"),
                                  value: selectedSubject,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedSubject = newValue!;
                                      if (selectedSubject == "Matematika") {
                                        urlLearningVid =
                                            'assets/images/learning_videos1.png';
                                      } else if (selectedSubject == "Fisika") {
                                        urlLearningVid =
                                            'assets/images/learning_videos2.png';
                                      } else if (selectedSubject == "Kimia") {
                                        urlLearningVid =
                                            'assets/images/learning_videos3.png';
                                      }
                                    });
                                  },
                                  items: <String>[
                                    "Matematika",
                                    "Fisika",
                                    "Kimia",
                                    "Bahasa Indonesia",
                                    "Bahasa Inggris"
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF81B622),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  height: 200,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      _learningVideos(urlLearningVid),
                                      _learningVideos(urlLearningVid),
                                      _learningVideos(urlLearningVid),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _learningVideos(String urlImage) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            urlImage,
            width: 200.0,
            height: 300.0,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget _card(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        color: Color(0xFFBFDA90),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Main Topic: " + title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF3D550C),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFF8EAF53),
                child: Row(
                  children: <Widget>[
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/profile_pic_students.png',
                          height: 30,
                          width: 30,
                        ),
                      )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 80, height: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ActiveDiscussion(title);
                      },),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF81B622),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: Text(
                      "Join",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mainMenu(context) {
    return Drawer(
      child: Container(
        color: Color(0xFF81B622),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'temanajar',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Classes',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.class_,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Quizzes',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.task,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuizPage();
                    },
                  ),
                );
              },
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Discussion',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.record_voice_over_rounded,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Friends',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.emoji_people_rounded,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Leaderboards',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.leaderboard_rounded,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Premium Plan',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.wallet_membership_rounded,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white,
              height: 10,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Settings',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 36.0,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
