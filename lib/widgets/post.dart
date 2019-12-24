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
    return Column(
      children: <Widget>[
        Container(
          // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (ctx, index) {
              return Column(
                children: <Widget>[
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //   width: 60,
                  //   height: 60,
                  index == 0
                      ? Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          width: 70,
                          height: 70,
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                backgroundImage: AssetImage(
                                    'assets/images/profile/$index.jpg'),
                                radius: 32,
                              ),
                              Positioned(
                                top: 45,
                                left: 44,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Icon(
                                        MdiIcons.circle,
                                        size: 19,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        Icons.add_circle,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      // : CircleAvatar(
                      //     backgroundImage:
                      //         AssetImage('assets/images/profile/$index.jpg'),
                      //     radius: 35,
                      //   ),
                      : Container(
                          margin: EdgeInsets.fromLTRB(7, 0, 5, 0),
                          height: 70,
                          width: 70,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(131, 58, 180, 1),
                                Color.fromRGBO(193, 58, 180, 1),
                                Color.fromRGBO(253, 29, 29, 1),
                                Color.fromRGBO(245, 96, 64, 1),
                                Color.fromRGBO(247, 119, 55, 1),
                                Color.fromRGBO(252, 176, 69, 1),
                              ],
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/profile/$index.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                  // : Stack(
                  //     children: <Widget>[
                  //       Container(
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           border: Border.all(
                  //             color: Colors.grey,
                  //             width: 2,
                  //           ),
                  //         ),
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(
                  //               color: Colors.white,
                  //               width: 2,
                  //             ),
                  //           ),
                  //           child: CircleAvatar(
                  //             radius: 35,
                  //             backgroundImage: AssetImage(
                  //                 'assets/images/profile/$index.jpg'),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      index == 0 ? 'Your story' : 'genericuser',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
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
                                backgroundImage: AssetImage(
                                    'assets/images/profile/$index.jpg'),
                                radius: 20,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
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
          ),
        ),
      ],
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
