import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.keyboard_arrow_down, size: 24),
                    const Text(
                      'Now Playing',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(Icons.more_horiz, size: 24),
                  ],
                ),
              ),

              // Main Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    // Album Art Card
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width - 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900],
                        image: const DecorationImage(
                          image: AssetImage('assets/album_cover.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Song Info
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Remedy',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Annie Schindel',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Progress Bar
                    Column(
                      children: [
                        SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 2,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 4,
                            ),
                            overlayShape: SliderComponentShape.noOverlay,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey[800],
                            thumbColor: Colors.white,
                          ),
                          child: Slider(
                            value: 0.3,
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1:46',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '3:40',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Control Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.shuffle, color: Colors.white),
                          onPressed: () {},
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.skip_previous,
                              color: Colors.white),
                          onPressed: () {},
                          iconSize: 32,
                        ),
                        Container(
                          width: 56,
                          height: 56,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.pause,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            iconSize: 32,
                          ),
                        ),
                        IconButton(
                          icon:
                              const Icon(Icons.skip_next, color: Colors.white),
                          onPressed: () {},
                          iconSize: 32,
                        ),
                        IconButton(
                          icon: const Icon(Icons.repeat, color: Colors.white),
                          onPressed: () {},
                          iconSize: 24,
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Bottom Queue Section
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'UP NEXT',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.music_note, size: 16),
                            const SizedBox(width: 16),
                            const Icon(Icons.menu, size: 16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        _buildQueueItem("I'm Fine", "2:15"),
                        _buildQueueItem("Down", "4:19"),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQueueItem(String title, String duration) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            duration,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
