import 'package:flutter/material.dart';
import '../emotion_icons.dart';

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
      Color.fromRGBO(131, 58, 180, 1),
      Color.fromRGBO(253, 29, 29, 1),
      Color.fromRGBO(252, 176, 69, 1),
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
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShaderMask(
              shaderCallback: (bounds) => gradient_1.createShader(
                Rect.fromLTWH(0, 0, 45, 50),
              ),
              child: IconButton(
                iconSize: 25,
                icon: Icon(Emotion.emo_happy),
                color: Colors.white,
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
            SizedBox(
              width: 170,
            ),
            ShaderMask(
              shaderCallback: (bounds) => gradient_2.createShader(
                Rect.fromLTWH(0, 0, 45, 50),
              ),
              child: IconButton(
                iconSize: 30,
                icon: Icon(Emotion.emo_cry),
                color: Colors.white,
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
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${widget.reaction_1}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 200,
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
      ],
    );
  }
}
