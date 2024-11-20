import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0), // Add padding to left and right
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
          children: [
            // Logo aligned to the top left
            Padding(
              padding: const EdgeInsets.only(top: 80.0), // Adjust the top padding
              child: Image.asset(
                'assets/images/logo.png', // Add your logo image here
                height: 80, // Adjust the logo size if needed
              ),
            ),
            const SizedBox(height: 20), // Space between logo and text

            // "Forgot Password" text aligned to the left
            const Text(
              'Forgot password?',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30), // Space after "Forgot Password" text

            // Email TextField
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Enter your email address',
                prefixIcon: const Icon(Icons.local_post_office, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.grey), // Rounded border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0), // Focused grey border
                ),
              ),
            ),
            const SizedBox(height: 30), // Space between email field and the text

            // Instruction text above the submit button
            const Text(
              '* We will send you a message to set or reset your new password',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey, // Change text color to red
              ),
            ),

            const SizedBox(height: 30), // Space between email field and the text
            const SizedBox(height: 20), // Space between the text and the button

            // Submit button aligned to the center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verification-code'); // Navigate to verification screen
                },
                child: const Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF262263), // Set button color to custom color
                  foregroundColor: Colors.white, // Set button text color to white
                  padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 15), // Button padding
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // Button shape
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
