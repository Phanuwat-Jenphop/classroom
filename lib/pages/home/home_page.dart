import 'package:flutter/material.dart';
import 'package:flutter_week_codeium/pages/home/widgets/attendance.dart';
import 'package:flutter_week_codeium/pages/home/widgets/notification.dart';
import 'package:flutter_week_codeium/pages/home/widgets/time_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget _buildPagebody() {
      switch (_selectedIndex) {
        case 0:
          return const Timetable();
        case 1:
          return const Attendance();
        case 2:
          return const AppNotification();
        default:
          return const Timetable();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomNavigationBar(
                onTap: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                currentIndex: _selectedIndex,
                // list item
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'ตารางเรียน',
                  ),
                  BottomNavigationBarItem(
                    // icon: Icon(Icons.check),
                    // label: 'เช็คชื่อ'
                    icon: SizedBox.shrink(),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: 'แจ้งเตือน'),
                ],
              ),
            ],
          ),
          Positioned(
            // top: -60.0,
            right: 0.0,
            left: 0.0,
            bottom: 16.0,
            child: Center(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  borderRadius: BorderRadius.circular(50.0),
                  splashColor: Color.fromARGB(234, 243, 211, 34),
                  highlightColor: Colors.greenAccent,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check,
                          color: _selectedIndex == 1
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'เช็คชื่อ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? Theme.of(context).colorScheme.primary
                                : null,
                            fontSize: _selectedIndex == 1 ? 16.0 : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: _buildPagebody(),
      ),
      // body: Container(
      //   child: Center(
      //     child: Text(
      //       'HOME',
      //       style: TextStyle(
      //         fontSize: 30.0,
      //         color: Colors.blue[600],
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}


