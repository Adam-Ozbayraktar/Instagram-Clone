import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/togglefooter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'dart:math';

import './footer.dart';
import './image.dart';
import './altfooter.dart';
import './togglefooter.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomNumber = Random();
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          child: Column(
            children: <Widget>[
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // child: Image.asset('assets/images/profile-picture.jpg'),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile/$index.jpg'),
                          radius: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DetailScreen(index);
                        }));
                      },
                    ),

                    Container(
                      width: 270,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'genericuser',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Los Angeles, California',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(
                    //   width: 190,
                    // ),
                    Container(
                        // child: IconButton(
                        child: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Report'),
                        ),
                        PopupMenuItem(
                          child: Text('Share'),
                        ),
                        PopupMenuItem(
                          child: Text('Unfollow'),
                        ),
                      ],
                    )
                        // iconSize: 30,
                        // icon: Icon(Icons.more_vert),
                        // icon: Icon(MdiIcons.heart, color: Colors.red),
                        // icon: Icon(MdiIcons.heartOutline),
                        // onPressed: () {},
                        // ),
                        ),
                  ],
                ),
              ),
              // PostImage(index),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: ClipRect(
                  // child: Image.asset('assets/images/posts/$index.jpg'),
                  child: PhotoView(
                    imageProvider: AssetImage(
                      'assets/images/posts/$index.jpg',
                    ),
                    minScale: PhotoViewComputedScale.contained * 1,
                    maxScale: PhotoViewComputedScale.covered * 1.8,
                    initialScale: PhotoViewComputedScale.covered * 1,
                  ),
                ),
              ),
              GradientIconButtons(
                reaction_1: randomNumber.nextInt(100),
                reaction_2: randomNumber.nextInt(100),
              ),
              // AltFooter(
              //   hearts: randomNumber.nextInt(100),
              //   thumbsUp: randomNumber.nextInt(100),
              //   displeased: randomNumber.nextInt(100),
              //   angry: randomNumber.nextInt(100),
              //   sad: randomNumber.nextInt(100),
              // ),
              // Footer(
              //   hearts: randomNumber.nextInt(100),
              //   thumbsUp: randomNumber.nextInt(100),
              //   displeased: randomNumber.nextInt(100),
              //   angry: randomNumber.nextInt(100),
              //   sad: randomNumber.nextInt(100),
              // ),
            ],
          ),
        );
      },
      itemCount: 9,
    );
  }
}

class DetailScreen extends StatelessWidget {
  final int index;

  DetailScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Image.asset('assets/images/profile/$index.jpg'),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
