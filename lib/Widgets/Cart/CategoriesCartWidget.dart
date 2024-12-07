import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoriesCartWidget extends StatefulWidget {
  const CategoriesCartWidget({super.key});

  @override
  _CategoriesCartWidgetState createState() => _CategoriesCartWidgetState();
}

class _CategoriesCartWidgetState extends State<CategoriesCartWidget> {
  List<Map<String, dynamic>> items = [
    {
      'name': 'Burger King Medium',
      'price': 'Rp. 50.000,00',
      'image': 'images/burger.png',
      'quantity': 1, 
    },
    {
      'name': 'Burger King Large',
      'price': 'Rp. 70.000,00',
      'image': 'images/burger.png',
      'quantity': 1,
    },
    {
      'name': 'Teh Botol Sostro',
      'price': 'Rp. 15.000,00',
      'image': 'images/teh.png',
      'quantity': 1,
    },
  ];

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void increaseQuantity(int index) {
    setState(() {
      items[index]['quantity']++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (items[index]['quantity'] > 1) {
        items[index]['quantity']--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Column(
        children: items.map((item) {
          int index = items.indexOf(item);
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    item['image']!,
                    height: 80,
                    width: 100,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item['name']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              CupertinoIcons.trash,
                              color: Colors.red,
                            ),
                            onPressed: () => removeItem(index),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item['price']!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => decreaseQuantity(index),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              item['quantity'].toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => increaseQuantity(index),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
