import 'package:flutter/material.dart';
import 'package:flutterdelivery1/pages/bottomnav.dart';
import 'package:flutterdelivery1/pages/profile.dart';
import 'package:flutterdelivery1/pages/settings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                )); // Aion when back button is pressed
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to the Settings page when the icon is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SettingsPage()), // Replace with your settings page widget
                );
              },
            ),
          ),
        ],
        backgroundColor: Colors.orange.shade300,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header with Image and Camera Icon
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange.shade300, Colors.orange.shade500],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                      Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                                'images/user.jpg'), // Profile picture
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                // Action to change profile picture
                              },
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.orange,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Form Fields for Editing Profile
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextField('Name', 'Full Name', Icons.person),
                  const SizedBox(height: 20),
                  buildTextField('Email', 'example@gmail.com', Icons.email),
                  const SizedBox(height: 20),
                  buildTextField('Delivery Address',
                      'RK University, Rajkot, Gujarat', Icons.location_on),
                  const SizedBox(height: 20),
                  buildTextField('Mobile No.', '+91 918 xxxx 854', Icons.phone),
                  const SizedBox(height: 20),
                  buildTextField('Password', '********', Icons.lock,
                      isPassword: true),
                  const SizedBox(height: 20),
                  buildTextField('Confirm Password', '********', Icons.lock,
                      isPassword: true),
                  const SizedBox(height: 40),
                  // Save Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Action on Save button click
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Save'),
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

  // Helper function to build text fields
  Widget buildTextField(String label, String placeholder, IconData icon,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            hintText: placeholder,
            prefixIcon: Icon(icon, color: Colors.grey),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
