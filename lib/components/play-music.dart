
import 'package:flutter/material.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shuffle, size: size.width * 0.05),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous, size: size.width * 0.08),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pause_circle_filled, size: size.width * 0.13),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next, size: size.width * 0.08),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.repeat, size: size.width * 0.05),
            label: '',
          ),
        ],
        onTap: (null),
      ),
    );
  }
}
