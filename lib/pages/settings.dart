import 'package:flutter/material.dart';
import 'package:flutterdelivery1/pages/profile.dart';



class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => const Profile(),));// Action when back button is pressed
          },
        ),
        title: const Text('Settings'),
        centerTitle: true,
        elevation: 0, // Remove shadow below the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(24),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a settings',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Settings options
            _buildSettingsOption(
              context,
              icon: Icons.notifications,
              color: Colors.orange,
              title: 'Notifications',
            ),
            _buildSettingsOption(
              context,
              icon: Icons.lock,
              color: Colors.orange,
              title: 'Privacy & Security',
            ),
            _buildSettingsOption(
              context,
              icon: Icons.support_agent,
              color: Colors.orange,
              title: 'Help & Support',
            ),
            _buildSettingsOption(
              context,
              icon: Icons.info,
              color: Colors.orange,
              title: 'About Us',
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create each settings option
  Widget _buildSettingsOption(BuildContext context,
      {required IconData icon, required Color color, required String title}) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.1), // Lighter background for icon
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color),
      ),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Action for each settings option
      },
    );
  }
}
