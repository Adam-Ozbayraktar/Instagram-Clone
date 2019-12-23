import 'package:flutter/material.dart';
import '../emotion_icons.dart';
import '../fontAwesome.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GradientIconButtons extends StatefulWidget {
  int reaction_1;
  int reaction_2;

  GradientIconButtons({this.reaction_1, this.reaction_2});

  @override
  _GradientIconButtonsState createState() => _GradientIconButtonsState();
}

class _GradientIconButtonsState extends State<GradientIconButtons> {
  bool buttonSelected_1 = false;
  bool buttonSelected_2 = false;

  int currState = -1;
  int prevState = -1;

  int buttonTracker_1 = 0;
  int buttonTracker_2 = 0;

  void reactionTracker(index) {
    currState = index;
    if (prevState == -1) {
      switch (index) {
        case 0:
          {
            widget.reaction_1++;
            buttonTracker_1++;
          }
          break;
        case 1:
          {
            buttonTracker_2++;
            widget.reaction_2++;
          }
          break;
      }
    } else if (prevState != -1 && currState != prevState) {
      switch (prevState) {
        case 0:
          {
            if (buttonTracker_1 % 2 != 0) {
              widget.reaction_1--;
              buttonTracker_1 = 0;
            } else {
              buttonTracker_1 = 0;
            }
          }
          break;
        case 1:
          {
            if (buttonTracker_2 % 2 != 0) {
              widget.reaction_2--;
              buttonTracker_2 = 0;
            } else {
              buttonTracker_2 = 0;
            }
          }
          break;
      }
      switch (index) {
        case 0:
          {
            widget.reaction_1++;
            buttonTracker_1++;
          }
          break;
        case 1:
          {
            widget.reaction_2++;
            buttonTracker_2++;
          }
          break;
      }
    } else if (prevState == currState) {
      switch (index) {
        case 0:
          {
            if (buttonTracker_1 % 2 == 0) {
              widget.reaction_1++;
              buttonTracker_1++;
            } else {
              widget.reaction_1--;
              buttonTracker_1++;
            }
          }
          break;
        case 1:
          {
            if (buttonTracker_2 % 2 == 0) {
              widget.reaction_2++;
              buttonTracker_2++;
            } else {
              widget.reaction_2--;
              buttonTracker_2++;
            }
          }
          break;
      }
    }
    prevState = currState;
  }

  var unselectedGradient_1 = LinearGradient(
    colors: [
      Color.fromRGBO(189, 195, 199, 1),
      Color.fromRGBO(44, 62, 80, 1),
    ],
  );

  var unselectedGradient_2 = LinearGradient(
    colors: [
      Color.fromRGBO(189, 195, 199, 1),
      Color.fromRGBO(44, 62, 80, 1),
    ],
  );

  var gradient_1 = LinearGradient(
    colors: [
      Color.fromRGBO(189, 195, 199, 1),
      Color.fromRGBO(44, 62, 80, 1),
    ],
  );

  var gradient_2 = LinearGradient(
    colors: [
      Color.fromRGBO(189, 195, 199, 1),
      Color.fromRGBO(44, 62, 80, 1),
    ],
  );

  var selectedGradient_1 = LinearGradient(
    colors: [
      // Color.fromRGBO(131, 58, 180, 1),
      // Color.fromRGBO(253, 29, 29, 1),
      // Color.fromRGBO(252, 176, 69, 1),
      Color.fromRGBO(255, 163, 192, 1),
      Color.fromRGBO(255, 239, 152, 1),
      Color.fromRGBO(150, 255, 163, 1),
      Color.fromRGBO(47, 255, 231, 1),
      Color.fromRGBO(184, 175, 252, 1),
    ],
  );

  var selectedGradient_2 = LinearGradient(
    colors: [
      Color.fromRGBO(131, 58, 180, 1),
      Color.fromRGBO(253, 29, 29, 1),
      Color.fromRGBO(252, 176, 69, 1),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ShaderMask(
              shaderCallback: (bounds) => gradient_1.createShader(
                Rect.fromLTWH(0, 0, 40, 50),
              ),
              child: IconButton(
                iconSize: 40,
                icon: buttonSelected_1 ? 
                  Icon(MdiIcons.heart, color: Colors.white) :
                  Icon(MdiIcons.heartOutline, color: Colors.black), 
                onPressed: () {
                  setState(() {
                    if (buttonSelected_1) {
                      buttonSelected_1 = false;
                      gradient_1 = unselectedGradient_1;
                      reactionTracker(0);
                    } else {
                      buttonSelected_1 = true;
                      buttonSelected_2 = false;
                      gradient_1 = selectedGradient_1;
                      gradient_2 = unselectedGradient_2;
                      reactionTracker(0);
                    }
                  });
                },
              ),
            ),
            // SizedBox(
            //   width: 0,
            // ),
            ShaderMask(
              shaderCallback: (bounds) => gradient_2.createShader(
                Rect.fromLTWH(0, 0, 45, 50),
              ),
              child: IconButton(
                iconSize: 40,
                icon: buttonSelected_2 ? 
                  Icon(MdiIcons.heartBroken, color: Colors.white) :
                  Icon(MdiIcons.heartBrokenOutline, color: Colors.black),  
                // icon: Icon(buttonSelected_2
                //     ? MdiIcons.heartBroken, color: Colors.white,),
                //     : MdiIcons.heartBrokenOutline, color: Colo),
                // color: Colors.white,
                onPressed: () {
                  setState(() {
                    if (buttonSelected_2) {
                      buttonSelected_2 = false;
                      gradient_2 = unselectedGradient_2;
                      reactionTracker(1);
                    } else {
                      buttonSelected_2 = true;
                      buttonSelected_1 = false;
                      gradient_1 = unselectedGradient_1;
                      gradient_2 = selectedGradient_2;
                      reactionTracker(1);
                    }
                  });
                },
              ),
            ),
            SizedBox(
              width: 130,
            ),
            IconButton(
              icon: Icon(
                FontAwesome.comment_empty,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesome.paper_plane_empty,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesome.bookmark_empty,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 16,
            ),
            Text(
              '${widget.reaction_1}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              '${widget.reaction_2}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'genericuser',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              'This is a insightful description of the photo',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'above. Whatever the photo may be, I am sure it will ',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'inspire you and motivate you.',
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'View all 56 comments',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              '5 hours ago',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 11,
              ),
            ),
          ],
        ),
        SizedBox(
              height: 10,
            ),
      ],
    );
  }
}
