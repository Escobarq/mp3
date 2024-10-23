import 'package:flutter/material.dart';
import 'package:fui_kit/models/maps.dart';
import 'package:fui_kit/widgets/icons/icon_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.05;
    final verticalSpacing = size.height * 0.02;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: padding, vertical: verticalSpacing),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_down,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                    Text(
                      'Now Playing',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.graphic_eq_outlined,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent.withOpacity(0.9),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 9),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://t4.ftcdn.net/jpg/04/69/86/93/360_F_469869374_CdbhngMClstYvBPOuQpcHvXPo8L7v6Vr.jpg',
                      width: double.infinity,
                      height: size.width - (padding * 2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: verticalSpacing),
                Text(
                  'Remedy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: verticalSpacing * 0.2),
                Text(
                  'Anne Streated',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width * 0.04,
                  ),
                ),
                SizedBox(height: verticalSpacing),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.greenAccent,
                    inactiveTrackColor: Colors.grey[800],
                    thumbColor: Colors.white,
                    overlayColor: Colors.white.withAlpha(32),
                    thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: size.width * 0.015),
                    overlayShape: RoundSliderOverlayShape(
                        overlayRadius: size.width * 0.04),
                  ),
                  child: Slider(
                    value: 0.4,
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding * 0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1:46',
                          style: TextStyle(
                              color: Colors.grey, fontSize: size.width * 0.03)),
                      Text('3:50',
                          style: TextStyle(
                              color: Colors.grey, fontSize: size.width * 0.03)),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildControlButton(SolidRounded.MUSIC, size),
                    _buildControlButton(RegularRounded.HEART, size),
                  ],
                ),
                SizedBox(height: verticalSpacing),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UP NEXT',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: size.width - 40, // Adjust for padding
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              _buildSongListItem("I'm Fine", "Ashe", "2:16"),
                              _buildSongListItem("Drown", "Dabin", "4:19"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildPlayerControls(size),
    );
  }

  Widget _buildControlButton(String icon, Size size) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(size.width * 0.06),
      splashColor: Colors.grey,
      child: Container(
        padding: EdgeInsets.all(size.width * 0.02),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(size.width * 0.06),
        ),
        child: FUI(icon,
            width: size.width * 0.05,
            height: size.width * 0.05,
            color: Colors.white),
      ),
    );
  }

  Widget _buildSongListItem(String title, String artist, String duration) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 4),
              Text(
                artist,
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
            ],
          ),
          Text(
            duration,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerControls(Size size) {
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
