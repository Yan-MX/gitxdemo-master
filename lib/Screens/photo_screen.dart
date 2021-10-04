import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Carousel(

          images: [
            Image(image: AssetImage("assets/p1.jpg")),
            Image(image: AssetImage("assets/p2.jpg")),
            Image(image: AssetImage("assets/p3.jpg")),
          ],
          overlayShadow: false,
        ));
  }
}
