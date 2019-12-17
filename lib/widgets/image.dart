import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:photo_view/photo_view.dart';

class PostImage extends StatefulWidget {
  final int index;
  PostImage(this.index);
  @override
  _PostImageState createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  PhotoViewScaleStateController scaleStateController;

  @override
  void initState() {
    super.initState();
    scaleStateController = PhotoViewScaleStateController();
  }

  @override
  void dispose() {
    scaleStateController.dispose();
    super.dispose();
  }

  void goBack(ScaleEndDetails details){ //TapUpDetails details) {
    scaleStateController.scaleState = PhotoViewScaleState.initial;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTapUp: goBack,
      onScaleEnd: goBack,
      child: Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: ClipRect(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: PhotoView(
                  imageProvider:
                      AssetImage('assets/images/posts/${widget.index}.jpg'),
                  minScale: PhotoViewComputedScale.contained * 1,
                  maxScale: PhotoViewComputedScale.covered * 1.8,
                  initialScale: PhotoViewComputedScale.contained * 1,
                  scaleStateController: scaleStateController,
                ),
              ),
              FlatButton(
                color: Colors.white,
                child: Text('Go to original size'),
                onPressed: () {}//goBack,
              ),
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   height: 400,
    //   width: MediaQuery.of(context).size.width,
    //   child: ClipRect(
    //     // child: Image.asset('assets/images/posts/$index.jpg'),
    //     child: PhotoView(
    //       imageProvider: AssetImage('assets/images/posts/${widget.index}.jpg'),
    //     ),
    //   ),
    // );
  }
}
