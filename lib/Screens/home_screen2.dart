import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationdemo/Screens/scroll_small_horizontal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            //color: Theme.of(context).dialogBackgroundColor,
            image: DecorationImage(
                image: AssetImage("assets/p1.jpg"), fit: BoxFit.cover)),
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              physics:BouncingScrollPhysics(),
              controller: scrollController,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).dialogBackgroundColor,
                    // image: DecorationImage( image: AssetImage("assets/p1.jpg")),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: const [
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "lorem ipsum dolor sit amet",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2),
                      ),
                    ),
                    ScrollSmallHorizontal(),
                    SizedBox(height: 200.0),
                    ScrollSmallHorizontal(),
                    SizedBox(height: 200.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
