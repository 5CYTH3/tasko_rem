import 'package:flutter/material.dart';
import 'Body.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold (
			appBar: buildAppBar(),
			body: Body(), 
      bottomNavigationBar: bottomAppBar(),
		);
	}

  BottomNavigationBar bottomAppBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
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
          label: 'Lesson Tasks'

        ),
      ],
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