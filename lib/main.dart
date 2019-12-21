import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './widgets/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                MdiIcons.homeOutline,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                MdiIcons.homeOutline,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(null, 35),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          // centerTitle: false,
          // elevation: 0,
          // backgroundColor: Colors.white,
          // automaticallyImplyLeading: false,
          // leading: IconButton(
          //   icon: Icon(
          //     MdiIcons.cameraOutline,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {},
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  MdiIcons.cameraOutline,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Text(
                'InstaBook',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Pacifico',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              IconButton(
                icon: Icon(Icons.tv, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.sendOutline,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Post(),
    );
  }
}
