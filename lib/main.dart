import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './widgets/post.dart';
import './fontAwesome.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 15),
            IconButton(
              icon: Icon(
                MdiIcons.homeOutline,
                size: 35,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 34),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 34),
            IconButton(
              icon: Icon(
                MdiIcons.plusBoxOutline,
                size: 35,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 34),
            IconButton(
              icon: Icon(
                MdiIcons.heartOutline,
                size: 35,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 40),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile/3.jpg'),
              radius: 15,
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(null, 45),
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
                  FontAwesome.paper_plane_empty,
                  size: 26,
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
