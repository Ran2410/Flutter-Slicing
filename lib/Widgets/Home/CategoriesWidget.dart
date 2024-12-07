import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categorieswidget extends StatefulWidget {
  const Categorieswidget({super.key});

  @override
  _CategorieswidgetState createState() => _CategorieswidgetState();
}

class _CategorieswidgetState extends State<Categorieswidget> {
  bool _isHovered1 = false;
  bool _isHovered2 = false;
  bool _isHovered3 = false;

  @override
  Widget build(BuildContext context) {
    return Center(  // This ensures the entire widget is centered horizontally and vertically
      child: Padding(
        padding: const EdgeInsets.all(16.0),  // Optional: Adds padding around the widget for better look
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Check if screen width is smaller than a threshold (e.g., 600px)
            bool isSmallScreen = constraints.maxWidth < 600;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Horizontal scrolling if needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,  // Ensures the items are centered horizontally
                children: [
                  // Category 1
                  _buildCategory(
                    imagePath: "images/burger.png",
                    title: "Makanan",
                    isHovered: _isHovered1,
                    onEnter: () => setState(() => _isHovered1 = true),
                    onExit: () => setState(() => _isHovered1 = false),
                    isSmallScreen: isSmallScreen,
                  ),
                  // Category 2
                  _buildCategory(
                    imagePath: "images/sempol.jpg",
                    title: "Cemilan",
                    isHovered: _isHovered2,
                    onEnter: () => setState(() => _isHovered2 = true),
                    onExit: () => setState(() => _isHovered2 = false),
                    isSmallScreen: isSmallScreen,
                  ),
                  // Category 3
                  _buildCategory(
                    imagePath: "images/teh.png",
                    title: "Minuman",
                    isHovered: _isHovered3,
                    onEnter: () => setState(() => _isHovered3 = true),
                    onExit: () => setState(() => _isHovered3 = false),
                    isSmallScreen: isSmallScreen,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategory({
    required String imagePath,
    required String title,
    required bool isHovered,
    required Function() onEnter,
    required Function() onExit,
    required bool isSmallScreen,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: MouseRegion(
        onEnter: (_) => onEnter(),
        onExit: (_) => onExit(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isHovered ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                imagePath,
                height: isSmallScreen ? 80 : 100, // Adjust the size for small screens
                width: isSmallScreen ? 80 : 100,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
