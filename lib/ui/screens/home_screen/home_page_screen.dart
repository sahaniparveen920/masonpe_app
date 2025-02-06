import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_controller.dart'; // Import the controller

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0; // Track the selected index

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MasonPe.",
                      style: TextStyle(
                        color: Color(0xFF3E2789),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/menu_bar.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 220,
                  width: 610,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/home_background_image.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Want Building Materials?",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      const Text(
                        "Register Now to",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "• Buy products on credit",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "• Expand your business",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to registration screen or perform an action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.grey, // Grey border color
                            width: 1.2, // Border width
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          "Register Now",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "My Projects",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: Color(0xFF62449D),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/file_image.png',
                        width: 80, // Increased size
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "You haven't created any project yet.\nCreate your first project to start with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 12,right: 24,bottom: 12,left: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle create first project action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF0EEF6),
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "+   Create first project",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF785CB2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // Set the current selected index
          selectedItemColor: Color(0xFF62449D), // Purple color for selected item
          unselectedItemColor: Colors.grey, // Grey color for unselected items
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the selected index
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Image.asset("assets/bottom_navigator_images/home_color.png")
                  : Image.asset("assets/bottom_navigator_images/home_image.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? Image.asset("assets/bottom_navigator_images/projcet.png")
                  : Image.asset("assets/bottom_navigator_images/projects_image.png"),
              label: "Projects",
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? Image.asset("assets/bottom_navigator_images/order_color.png")
                  : Image.asset("assets/bottom_navigator_images/orders_images.png"),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? Image.asset("assets/bottom_navigator_images/profile_color.png")
                  : Image.asset("assets/bottom_navigator_images/profile_image.png"),
              label: "Profile",
            ),
          ],
        ),
    );
  }
}
