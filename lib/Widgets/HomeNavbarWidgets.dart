import 'package:flutter/material.dart';

class Homenavbarwidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 80,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(spreadRadius: 1, blurRadius: 8, color: Colors.black)
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.home,
            color: Colors.black,
            size: 50,
          ),
          Spacer(),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 50,
          ),
          Spacer(),
          Icon(
            Icons.post_add,
            color: Colors.black,
            size: 50,
          ),
        ],
      ),
    );
  }
}
