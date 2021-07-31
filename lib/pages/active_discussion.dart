import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveDiscussion extends StatefulWidget {
  String title;
  ActiveDiscussion(this.title);
  @override
  State<StatefulWidget> createState() {
    return ActiveDiscussionState(title);
  }
}

class ActiveDiscussionState extends State<ActiveDiscussion> {
  bool clickedCentreFAB = false;
  bool onMic = false;
  bool onCam = false;
  String urlImage = 'assets/images/discussion_both.png';
  ActiveDiscussionState(String title);
  void updateTabSelection(bool onMicClick, bool onCamClick) {
    setState(
      () {
        onMic = onMicClick;
        onCam = onCamClick;
        if (onMic && onCam) {
          urlImage = 'assets/images/discussion.png';
        } else if (!onMic && onCam) {
          urlImage = 'assets/images/discussion_mute.png';
        } else if (onMic && !onCam) {
          urlImage = 'assets/images/discussion_cam.png';
        } else {
          urlImage = 'assets/images/discussion_both.png';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59981A),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: FractionalOffset.topCenter,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Active Discussion",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF59981A),
                      ),
                    ),
                    Text(
                      "Main Topic: " + widget.title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF81B622),
                      ),
                    ),
                    Text(
                      "Total Active Time :  30 minutes 50 seconds",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF81B622),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: FractionalOffset.center,
                child: Container(
                  child: Image.asset(
                    urlImage,
                    width: 800.0,
                    height: 800.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: clickedCentreFAB
                    ? MediaQuery.of(context).size.height
                    : 10.0,
                width: clickedCentreFAB
                    ? MediaQuery.of(context).size.height
                    : 10.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/example.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius:
                      BorderRadius.circular(clickedCentreFAB ? 0.0 : 300.0),
                  color: Color(0xFF81B622),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF81B622),
        onPressed: () {
          setState(() {
            clickedCentreFAB = !clickedCentreFAB;
          });
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.chat),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: IconButton(
                  onPressed: () {
                    updateTabSelection(!onMic, onCam);
                  },
                  iconSize: 30.0,
                  icon: Icon(onMic ? Icons.mic_rounded : Icons.mic_off_rounded,
                    color: Color(0xFF3D550C),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: IconButton(
                  onPressed: () {
                    updateTabSelection(onMic, !onCam);
                  },
                  iconSize: 30.0,
                  icon: Icon(
                    onCam ? Icons.videocam_rounded : Icons.videocam_off_rounded,
                    color: Color(0xFF3D550C),
                  ),
                ),
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }
}
