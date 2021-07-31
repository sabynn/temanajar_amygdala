import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59981A),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFA9E56C), Color(0xFF59981A)],
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 45 / 150,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Quizz',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Total Quizzes Done: 5',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFDEFCA8),
                                ),
                              ),
                              Text(
                                'Best Score: 100',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFDEFCA8),
                                ),
                              ),
                              Text(
                                'Average Score: 87',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFDEFCA8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF81B622),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        icon: const Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        label: Text(
                          "Create New Quizz",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "see your quizzes",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF81B622),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Card(
                      color: Color(0xFFBFDA90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0, left:8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Recent Quizzes",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF3D550C),
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.show_chart,
                                    color: Color(0xFF3D550C),
                                    size: 24.0,
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "see more",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Container(
                              height: 258,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _quizCard('assets/images/quiz1.jpg'),
                                  _quizCard('assets/images/quiz2.jpg'),
                                ],
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
                      color: Color(0xFFBFDA90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0, left:8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Do New Quizz",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF3D550C),
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.show_chart,
                                    color: Color(0xFF3D550C),
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "see more",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 258,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _quizCard('assets/images/quiz3.jpg'),
                                  _quizCard('assets/images/quiz4.jpg'),
                                  _quizCard('assets/images/quiz5.jpg'),
                                ],
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
    );
  }

  Widget _quizCard(String urlImage) {
    return InkWell(
      onTap: () {
      },
      child: Card(
          color: Color(0xFFBFDA90),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                urlImage,
                width: 200.0,
                height: 250.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
