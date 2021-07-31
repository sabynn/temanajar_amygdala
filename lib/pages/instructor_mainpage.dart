import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorMainPage extends StatelessWidget {
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
              'assets/images/profile_pic_instructor.png',
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
                      'Welcome, Alya!',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF3D550C),
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Create New Class",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFF3D550C),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.add_business_rounded,
                                      color: Colors.green,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/calendar.png',
                                  width: 500.0,
                                  height: MediaQuery.of(context).size.height *
                                      56 /
                                      150,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/upload1.png',
                                  width: 700.0,
                                  height: 380,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Upload Materials",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF3D550C),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/upload2.png',
                                  width: 500.0,
                                  height: 130.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              const SizedBox(height: 30),
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
                                    "Start New Class",
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Class Feedback",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFF3D550C),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.announcement_outlined,
                                      color: Colors.green,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 64.0),
                                    child: const Icon(
                                      Icons.remove_red_eye_rounded,
                                      color: Color(0xFF4A631B),
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7.0),
                                    child: Text(
                                      "Viewers From",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ElevatedButton.icon(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF81B622),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                        label: Text(
                                          "MatDas",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xFFE7FFBC),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Color(0xFFE7FFBC),
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/chart_matdas.png',
                                  width: 500.0,
                                  height: 300.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              const SizedBox(height: 50),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 69.0),
                                    child: const Icon(
                                      Icons.thumb_up_alt_rounded,
                                      color: Color(0xFF4A631B),
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7.0),
                                    child: Text(
                                      "Likes From",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ElevatedButton.icon(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF81B622),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        label: Text(
                                          "Fisika",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xFFE7FFBC),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Color(0xFFE7FFBC),
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/chart_fisika.png',
                                  width: 500.0,
                                  height: 300.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Center(
                                child: Text(
                                  "See More",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 258,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _quizCard('assets/images/classes1.png'),
                          _quizCard('assets/images/classes2.png'),
                        ],
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

  Widget _learningVideos() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/learning_videos.png',
            width: 200.0,
            height: 300.0,
            fit: BoxFit.fitWidth,
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
                'Active Discussion',
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

  Widget _quizCard(String urlImage) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                urlImage,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
