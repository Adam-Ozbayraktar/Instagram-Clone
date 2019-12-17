import 'package:flutter/material.dart';
import 'dart:math';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../emotion_icons.dart';

// var randomNumber = Random();

// int _hearts = randomNumber.nextInt(100);
// int _thumbsUp = randomNumber.nextInt(100);
// int _displeased = randomNumber.nextInt(100);
// int _angry = randomNumber.nextInt(100);
// int _sad = randomNumber.nextInt(100);

class Footer extends StatefulWidget {
  int hearts;
  int thumbsUp;
  int displeased;
  int angry;
  int sad;
  Footer({this.hearts, this.thumbsUp, this.displeased, this.angry, this.sad});
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool _isReacted = false;
  bool _isHeart = false;
  bool _isThumbs = false;
  bool _isDispleased = false;
  bool _isAngry = false;
  bool _isSad = false;

  void _toggleReaction(String reaction) {
    switch (reaction) {
      case "heart":
        {
          setState(() {
            if (_isHeart) {
              _isHeart = false;
              _isReacted = false;
              widget.hearts -= 1;
            } else {
              _isHeart = true;
              _isReacted = true;
              widget.hearts += 1;
            }
          });
        }
        break;
      case "thumbsUp":
        {
          setState(() {
            if (_isThumbs) {
              _isThumbs = false;
              _isReacted = false;
              widget.thumbsUp -= 1;
            } else {
              _isThumbs = true;
              _isReacted = true;
              widget.thumbsUp += 1;
            }
          });
        }
        break;
      case "displeased":
        {
          setState(() {
            if (_isDispleased) {
              _isDispleased = false;
              _isReacted = false;
              widget.displeased -= 1;
            } else {
              _isDispleased = true;
              _isReacted = true;
              widget.displeased += 1;
            }
          });
        }
        break;
      case "angry":
        {
          setState(() {
            if (_isAngry) {
              _isAngry = false;
              _isReacted = false;
              widget.angry -= 1;
            } else {
              _isAngry = true;
              _isReacted = true;
              widget.angry += 1;
            }
          });
        }
        break;
      case "sad":
        {
          setState(() {
            if (_isSad) {
              _isSad = false;
              _isReacted = false;
              widget.sad -= 1;
            } else {
              _isSad = true;
              _isReacted = true;
              widget.sad += 1;
            }
          });
        }
        break;
    }
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
                onPressed: () => _toggleReaction('heart'),
              ),
              Text(
                '${widget.hearts}',
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
                  color: (_isThumbs ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () => _toggleReaction('thumbsUp'),
              ),
              Text(
                '${widget.thumbsUp}',
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
                  color: (_isDispleased ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () => _toggleReaction('displeased'),
              ),
            ),
            Text(
              '${widget.displeased}',
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
                  color: (_isAngry ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () => _toggleReaction('angry'),
              ),
            ),
            Text(
              '${widget.angry}',
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
                  color: (_isSad ? Colors.lightBlue : Colors.blueGrey),
                ),
                onPressed: () => _toggleReaction('sad'),
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
