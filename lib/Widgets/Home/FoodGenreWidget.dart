import 'package:flutter/material.dart';

class Foodgenrewidget extends StatelessWidget {
  const Foodgenrewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        padding: const EdgeInsets.all(15),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.75,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          final items = [
            {"image": "images/burger.png", "title": "Burger King Medium", "price": "Rp. 50.000,00"},
            {"image": "images/teh.png", "title": "Teh Botol", "price": "Rp. 4.000,00"},
            {"image": "images/burger.png", "title": "Burger King Medium", "price": "Rp. 50.000,00"},
            {"image": "images/teh.png", "title": "Teh Botol", "price": "Rp. 4.000,00"},
            {"image": "images/burger.png", "title": "Burger King Medium", "price": "Rp. 50.000,00"},
            {"image": "images/burger.png", "title": "Burger King Medium", "price": "Rp. 50.000,00"},
          ];

          return _buildFoodBox(
            items[index]['image']!,
            items[index]['title']!,
            items[index]['price']!,
          );
        },
      ),
    );
  }

  Widget _buildFoodBox(String imagePath, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(fontSize: 14),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
