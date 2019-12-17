import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../emotion_icons.dart';

class AltFooter extends StatefulWidget {
  @override
  _AltFooterState createState() => _AltFooterState();
}

class _AltFooterState extends State<AltFooter> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false, false, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(MdiIcons.heart),
        Icon(Emotion.emo_thumbsup),
        Icon(Emotion.emo_displeased),
        Icon(Emotion.emo_angry),
        Icon(Emotion.emo_cry),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }
}
