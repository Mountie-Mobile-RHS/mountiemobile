import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MOUNTIE MOBILE",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Text(
            "TEST TO DO LATER!",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            )
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Calendar",
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Share",
              icon: Icon(Icons.share)
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}

void onTap(int index) {
  // TO DO!
}
