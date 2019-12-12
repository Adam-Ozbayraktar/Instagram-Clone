import 'package:flutter/material.dart';

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
      body: Container(
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
                          AssetImage('assets/images/profile-picture.jpg'),
                      radius: 20,
                    ),
                  ),

                  Container(
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'phillydefranco',
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
                child: Image.asset('assets/images/post.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
