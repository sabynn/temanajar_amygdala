import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temanajar/pages/peer_mainpage.dart';
import 'instructor_mainpage.dart';

class ChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Who are you?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50, //height of button
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF81B622),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PeerMainPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Student',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 50, //height of button
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF81B622),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return InstructorMainPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Instructor',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
