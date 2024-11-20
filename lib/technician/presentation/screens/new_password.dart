import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscurePassword = true; // Variable to toggle password visibility

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; // Get the screen width

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo aligned to the top left
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100, // Adjust logo height
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // "New Password" text aligned to the left
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: const Text(
                'New\nPassword',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 27.0),

            // Center align the rest of the content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Password TextField with box, hint text inside the box, and left icon
                  Container(
                    width: width * 0.9, // Use MediaQuery width in parent
                    child: TextField(
                      obscureText: _obscurePassword, // Control visibility of password
                      decoration: InputDecoration(
                        label: Text('Password'),
                        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Confirm Password TextField with box, hint text, left icon, and right eye icon
                  Container(
                    width: width * 0.9, // Use MediaQuery width in parent
                    child: TextField(
                      obscureText: true, // Control visibility of confirm password
                      decoration: InputDecoration(
                        label: Text('Confirm Password'),
                        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),


                  // Instruction text aligned to the left
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: const Text(
                      'Please write your new password.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey, // Set text color to grey for better UX
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  // Reset Password button with enhanced design
                  InkWell(
                    onTap: () {
                      // Handle password reset logic
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF262263),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}
