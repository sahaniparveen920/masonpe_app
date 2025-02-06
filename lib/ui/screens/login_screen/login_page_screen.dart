import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/ui/screens/home_screen/home_page_screen.dart';
import 'login_page_controller.dart'; // Import the controller

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the controller
    final LoginPageController controller = LoginPageController();

    return Scaffold(
      body: Column(
        children: [
          // Blue Container for Skip Button, Illustration, and Header Text
          Container(
            width: double.infinity,
            color: Color(0xFFE1ECFD), // Blue color for the container
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20), // Padding to ensure content doesn't touch edges
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Skip Button
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => HomePageScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // Make the button's background transparent
                      side: BorderSide(
                        color: Colors.grey, // Grey border color
                        width: 1.1, // Border width
                      ),
                      elevation: 0, // Remove the shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20), // Reduce the height with padding
                    ),
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFF666C73), // Text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Illustration & Header Text
                Column(
                  children: [
                    // Use MediaQuery to adjust the image size based on screen width and height
                    Image.asset(
                      'assets/images/register_construction.png', // Replace with actual image
                      height: MediaQuery.of(context).size.height * 0.25,  // 25% of screen height
                      width: MediaQuery.of(context).size.width * 0.9,      // 90% of screen width
                    ),
                    Text(
                      "Financing Platform for\nContractors & Builders",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.black, // Text color white to stand out
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Log in or Sign up",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black, // White color for text
            ),
          ),

          // Mobile Number Input Field
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
            child: TextField(
              textAlignVertical: TextAlignVertical.center, // Center the text vertically
              decoration: InputDecoration(
                labelText: "Mobile Number", // Label text added
                floatingLabelBehavior: FloatingLabelBehavior.auto, // Moves hint text to top
                labelStyle: const TextStyle(
                  color: Colors.grey, // Label text color
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Increased vertical padding
                isDense: true,
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),

          const SizedBox(height: 30),

          // Generate OTP Button
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                // Use the controller's method to generate OTP
                controller.generateOtp(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF603EA3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Generate OTP",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Spacer to push the Terms & Conditions text to the bottom
          // Remove the Spacer to avoid flex issues

          Spacer(),
          // Terms & Conditions
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text.rich(
              TextSpan(
                text: "By continuing, you agree to our ",
                style: GoogleFonts.inter(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: const TextStyle(color: Color(0xFF9C77F6), fontWeight: FontWeight.w700),
                  ),
                  const TextSpan(text: ", "),
                  TextSpan(
                    text: "\nPrivacy Policy",
                    style: const TextStyle(color: Color(0xFF9C77F6), fontWeight: FontWeight.w700),
                  ),
                  const TextSpan(text: " and "),
                  TextSpan(
                    text: "Cookie Policy.",
                    style: const TextStyle(color: Color(0xFF9C77F6), fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
