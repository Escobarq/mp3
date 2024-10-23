import 'package:flutter/material.dart';
import 'package:myapp/components/play-music.dart';

class ListCountre extends StatelessWidget {
  const ListCountre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          children: [
            const Text(
              'The End of the Line',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Linkin Park',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Color de fondo gris
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: const SingleChildScrollView(
                  child: Text(
                    '''Your blades are sharpened with precision (precision)
Flashing your favorite point of view (point of view)
I know you're waiting in the distance (distance)
Just like you always do, just like you always do

Already pulling me in
Already under my skin
And I know exactly how this ends, I

Let you cut me open just to watch me bleed
Gave up who I am for who you wanted me to be
Don't know why I'm hoping for what I won't receive
Falling for the promise of the emptiness machine
The emptiness machine

Going around like a revolver (like a revolver)
It's been decided how we lose (how we lose)
'Cause there's a fire under the altar (the altar)
I keep on lying to, I keep on lying to

Already pulling me in
Already under my skin
And I know exactly how this ends, I

Let you cut me open just to watch me bleed
Gave up who I am for who you wanted me to be
Don't know why I'm hoping for what I won't receive
Falling for the promise of the emptiness machine

I only wanted to be part of something
I only wanted to be part of, part of
I only wanted to be part of something
I only wanted to be part of, part of
I only wanted to be part of something
I only wanted to be part

I let you cut me open just to watch me bleed
Gave up who I am for who you wanted me to be
Don't know why I'm hoping, so fucking naive
Falling for the promise of the emptiness machine
The emptiness machine

(I only wanted to be part of something) the emptiness machine, oh
(I only wanted to be part of) the emptiness machine''', // Agrega más letra
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                 
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PlayerControls(),
    );
  }
}
