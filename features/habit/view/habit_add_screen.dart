import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AddHabitScreen()));
}

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  @override
  Widget build(BuildContext context) {
    return _AddHabitPage();
  }
}

class _AddHabitPage extends StatefulWidget {
  @override
  _AddHabitPageState createState() => _AddHabitPageState();
}

class _AddHabitPageState extends State<_AddHabitPage> {
  final List<bool> _selectedDays = List.generate(
    7,
    (index) => false,
  ); // M-T-W-T-F-S-S
  final List<String> _selecterDayLabels = [];
  bool i = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 100,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.blue, fontSize: 17),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(color: Colors.blue, fontSize: 17),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 189),
              child: Text(
                'Add Habit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 21,
              ).copyWith(top: 35),
              height: 150,
              width: 500,
              child: TextField(
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF353535),
                  hintText: 'New Habit',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              height: 90,
              width: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Color(0xFF353535),
                margin: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    IconButton(
                      icon: Image.asset("assets/image/image9.png"),
                      iconSize: 30,
                      onPressed: () {
                        // Handle icon action
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text(
                    "Repeat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  const dayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
                  return _buildDayCard(dayLabels[index], index);
                }),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 35),
              child: Row(
                children: [
                  Text(
                    "Daily Remind",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 180),
                  Switch(
                    value: i,
                    onChanged: (value) {
                      setState(() {
                        i = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayCard(String title, int index) {
    bool isSelected = _selectedDays[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedDays[index] = !_selectedDays[index];
        });
        if (_selectedDays[index]) {
          _selecterDayLabels.add(title);
        } else {
          _selecterDayLabels.remove(title);
        }
      },
      child: Container(
        height: 45,
        width: 45,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: isSelected ? Colors.blue : Colors.grey,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
