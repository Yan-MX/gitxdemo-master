import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationdemo/Screens/scroll_small_horizontal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Theme.of(context).dialogBackgroundColor,
              child: SingleChildScrollView(

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
                    SizedBox(height: 300.0),

                    ScrollSmallHorizontal(),


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