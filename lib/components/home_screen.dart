import 'package:flutter/material.dart';
import 'package:tasko_rem/components/LessonBody.dart';
import 'Body.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List<Widget> _widgetList = <Widget>[
    Body(),
    LessonBody()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

	@override
	Widget build(BuildContext context) {
		return Scaffold (
			appBar: buildAppBar(),
			body: _widgetList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_outlined), 
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.sticky_note_2),
            label: 'Main Tasks'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_outlined), 
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.sticky_note_2),
            label: 'Lesson Tasks'

          ),
        ],
      ),
		);
	}

	AppBar buildAppBar() {
		return AppBar(
			elevation: 0,
			leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
      
      }),
			title: Text('Flut Tasko',
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ],
		);
	}
}