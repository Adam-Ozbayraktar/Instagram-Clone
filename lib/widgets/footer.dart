import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../emotion_icons.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool _isHeart = false;
  bool _isThumbs = false;
  bool _isDispleased = false;
  bool _isAngry = false;
  bool _isSad = false;

  int _hearts = 69;
  int _thumbsUp = 0;
  int _displeased = 0;
  int _angry = 0;
  int _sad = 0;

  void _toggleHeart() {
    setState(() {
      if (_isHeart) {
        _isHeart = false;
        _hearts -= 1;
      } else {
        _isHeart = true;
        _hearts += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              IconButton(
                iconSize: 30,
                icon: (_isHeart
                    ? Icon(MdiIcons.heart, color: Colors.red)
                    : Icon(
                        MdiIcons.heartOutline,
                        color: Colors.blueGrey,
                      )),
                onPressed: _toggleHeart,
              ),
              Text(
                '$_hearts',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              IconButton(
                iconSize: 25,
                icon: Icon(
                  Emotion.emo_thumbsup,
                  color: (_isHeart ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () {},
              ),
              Text(
                '$_hearts',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              child: IconButton(
                iconSize: 25,
                icon: Icon(
                  Emotion.emo_displeased,
                  color: (_isHeart ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              '$_hearts',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              child: IconButton(
                iconSize: 25,
                icon: Icon(
                  Emotion.emo_angry,
                  color: (_isHeart ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              '$_hearts',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              child: IconButton(
                iconSize: 25,
                icon: Icon(
                  Emotion.emo_cry,
                  color: (_isHeart ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              '$_hearts',
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
