import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HabitListScreen()));
}

class HabitListScreen extends StatefulWidget {
  const HabitListScreen({super.key});

  @override
  State<HabitListScreen> createState() => _HabitListScreenState();
}

class _HabitListScreenState extends State<HabitListScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Xử lý logic khi nhấn vào item ở đây
    print("Đã chọn item: $index");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 101),
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Habit List',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 180),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.add, color: Colors.white, size: 40),
                    onPressed: () {
                      // Handle add action
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle, size: 40, color: Colors.blue),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 40),
            label: '',
          ),
        ],
      ),
    );
  }

  // Widget _buildCard(String title, String day) {
  //     return Card(
  //       color: Colors.grey[900],
  //       margin: const EdgeInsets.symmetric(vertical: 8),
  //       child: ListTile(
  //         leading: CircleAvatar(child: Icon(Icons.emoji_emotions)),
  //         title: Text(title),
  //         subtitle: Row(
  //           children:
  //           day
  //               .map(
  //                 (day) => Padding(
  //               padding: const EdgeInsets.symmetric(horizontal: 4),
  //               child: Text(day),
  //             ),
  //           )
  //               .toList(),
  //         ),
  //         trailing: Icon(Icons.check_circle, color: Colors.grey),
  //       ),
  //     );
  // }
}
