import 'package:flutter/material.dart';
import 'package:food_app/Widgets/AppBarWidgets.dart';
import 'package:food_app/Widgets/CategoriesWidget.dart';
import 'package:food_app/Widgets/FoodGenreWidget.dart';
import 'package:food_app/Widgets/HomeNavbarWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Widget Nya
          const Appbarwidgets(),
          const Categorieswidget(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "All Food",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          const Foodgenrewidget(
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
            ),
          ),
          Homenavbarwidgets(),
        ],
      ),
    );
  }
}
