import 'package:flutter/material.dart';
import 'package:food_app/Widgets/PostBarWidget.dart';

class Postadd extends StatelessWidget {
  const Postadd({super.key});

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
                  Container(
                    width: 120,
                    height: 40,
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
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Text(
                          "Foto",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Nama Produk",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          "Harga",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          "Aksi",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  // Box Ke 1
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image(
                          image: AssetImage("images/burger.png"),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Burger King Medium",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Rp. 50.000,00",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Box Ke 2
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image(
                          image: AssetImage("images/teh.png"),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Teh Botol Sostro",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Rp. 3.000,00",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Box Ke 3
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image(
                          image: AssetImage("images/burger.png"),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Burger King Small",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Rp. 35.000,00",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
