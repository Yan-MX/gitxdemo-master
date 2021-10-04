import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
             // animationCurve:Curves.decelerate,
              autoplay:false,
              overlayShadow:true,
              animationDuration:const Duration(microseconds:
              700),
              showIndicator: true,
              moveIndicatorFromBottom:MediaQuery.of(context).size.height * 0.7,
              dotSize: 10.0,
              dotSpacing: 15.0,
              dotColor: Colors.lightGreenAccent,
              boxFit: BoxFit.fitWidth,
                dotBgColor: Colors.grey[50],
              //dotBgColor: Colors.grey[800].withOpacity(0),
              images: [
                Image(image: AssetImage("assets/p1.jpg")),
                Image(image: AssetImage("assets/p2.jpg")),
                Image(image: AssetImage("assets/p3.jpg")),
              ],

            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).dialogBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                  topRight: Radius.circular(80.0),
                )),

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,

          ),
        ),
      ],
    );
  }
}
