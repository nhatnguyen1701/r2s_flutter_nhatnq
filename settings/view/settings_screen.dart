import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';

void main() {
  runApp(const MaterialApp(home: SettingsScreen()));
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingPage();
  }
}

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool i = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 101, left: 20, right: 189),
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize: 40,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 25),
            _buildDarkModeCard(isDarkMode, (value) {
              themeProvider.toggleTheme(value);
            }),
            SizedBox(height: 35),
            _buildCard('Manage Backup'),
            SizedBox(height: 35),
            _buildCard('Restore Purchase'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).textTheme.bodyLarge?.color,
        selectedItemColor: Colors.white30,
        unselectedItemColor: Colors.white30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, size: 40, color: Colors.grey),
            label: '',
          ),
        ],
      ),
    );
  }
}

Widget _buildCard(String title) {
  return Container(
    height: 90,
    width: 500,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Color(0xFF353535),
      margin: const EdgeInsets.only(left: 17, right: 25),
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 180),
        ],
      ),
    ),
  );
}

Widget _buildDarkModeCard(bool isDark, ValueChanged<bool> onChanged) {
  return Container(
    height: 90,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color(0xFF353535),
      margin: const EdgeInsets.only(left: 17, right: 25),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dark Mode',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Switch(
              value: isDark,
              onChanged: onChanged,
              activeColor: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
