import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('similarity app '),
        backgroundColor: Colors.indigo[700],
      ),
      body: ImagePage(),
    ),
  ));
}

// statefull widget

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImage = 3;
  int rightImage = 2;

  void changeImage() {
    leftImage = Random().nextInt(8) + 1;
    rightImage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    // variable

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImage == rightImage ? 'congrats' : 'TRY AGAIN!',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$leftImage.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$rightImage.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
