import 'package:flutter/material.dart';
import 'package:food_app/Widgets/Post/PostBarWidget.dart';

class Postadd extends StatefulWidget {
  const Postadd({super.key});

  @override
  _PostaddState createState() => _PostaddState();
}

class _PostaddState extends State<Postadd> {
  List<Map<String, dynamic>> items = [
    {
      'image': 'images/burger.png',
      'name': 'Burger King Medium',
      'price': 'Rp. 50.000,00',
    },
    {
      'image': 'images/teh.png',
      'name': 'Teh Botol Sostro',
      'price': 'Rp. 3.000,00',
    },
    {
      'image': 'images/burger.png',
      'name': 'Burger King Small',
      'price': 'Rp. 35.000,00',
    },
  ];

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Postbarwidget(),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/AddDataPage");
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add Data",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.add, color: Colors.white, size: 18),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          "Foto",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          "Nama Produk",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "Harga",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "Aksi",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 10),
                  ...items.map((item) {
                    int index = items.indexOf(item);
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                width: 100,
                                child: Image.asset(item['image']),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Text(
                                item['name'],
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                item['price'],
                                style: const TextStyle(fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                onPressed: () => removeItem(index),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
