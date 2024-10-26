import 'package:flutter/material.dart';
import 'package:food_app/Widgets/PostBarWidget.dart';

class Postadd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Postbarwidget(),
                Container(
                padding: const EdgeInsets.all(8),
                width: 90,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                  
                )
              ],
            ),
            ),
          )
        ],
       ),
    );
  }
}
