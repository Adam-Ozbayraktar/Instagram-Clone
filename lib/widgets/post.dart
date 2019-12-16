import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './footer.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // child: Image.asset('assets/images/profile-picture.jpg'),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile/$index.jpg'),
                        radius: 20,
                      ),
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
                      child: IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.more_vert),
                        // icon: Icon(MdiIcons.heart, color: Colors.red),
                        // icon: Icon(MdiIcons.heartOutline),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Image.asset('assets/images/posts/$index.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              Footer(),
            ],
          ),
        );
      },
      itemCount: 9,
    );
  }
}
