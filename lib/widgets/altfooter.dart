import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../emotion_icons.dart';

class AltFooter extends StatefulWidget {
  int hearts;
  int thumbsUp;
  int displeased;
  int angry;
  int sad;
  AltFooter(
      {this.hearts, this.thumbsUp, this.displeased, this.angry, this.sad});
  @override
  _AltFooterState createState() => _AltFooterState();
}

class _AltFooterState extends State<AltFooter> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [false, false, false, false, false];
    super.initState();
  }

  void addReaction(index) {
    if (isSelected[index] == false) {
      switch (index) {
        case 0:
          {
            widget.hearts += 1;
          }
          break;
        case 1:
          {
            widget.thumbsUp += 1;
          }
          break;
        case 2:
          {
            widget.displeased += 1;
          }
          break;
        case 3:
          {
            widget.angry += 1;
          }
          break;
        case 4:
          {
            widget.sad += 1;
          }
          break;
      }
    }
  }

  // void removeReaction(index) {
  //   switch (index) {
  //     case 0:
  //       {
  //         widget.hearts -= 1;
  //       }
  //       break;
  //     case 1:
  //       {
  //         widget.thumbsUp -= 1;
  //       }
  //       break;
  //     case 2:
  //       {
  //         widget.displeased -= 1;
  //       }
  //       break;
  //     case 3:
  //       {
  //         widget.angry -= 1;
  //       }
  //       break;
  //     case 4:
  //       {
  //         widget.sad -= 1;
  //       }
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ToggleButtons(
          constraints: BoxConstraints.expand(width: 80, height: 50),
          fillColor: Colors.white,
          renderBorder: false,
          children: <Widget>[
            Icon(
                (isSelected[0] == false
                    ? MdiIcons.heartOutline
                    : MdiIcons.heart),
                size: 30),
            Icon(Emotion.emo_thumbsup),
            Icon(Emotion.emo_displeased),
            Icon(Emotion.emo_angry),
            Icon(Emotion.emo_cry),
          ],
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                if (buttonIndex == index) {
                  addReaction(index);
                  isSelected[buttonIndex] = true;
                } else {
                  isSelected[buttonIndex] = false;
                  // removeReaction(index);
                }
              }
            });
          },
          isSelected: isSelected,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '${widget.hearts}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '${widget.thumbsUp}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '${widget.displeased}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '${widget.angry}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '${widget.sad}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
