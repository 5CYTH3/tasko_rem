import 'package:flutter/material.dart';
import 'Body.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold (
			appBar: buildAppBar(),
			body: Body(), 
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