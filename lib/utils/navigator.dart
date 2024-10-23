import 'package:flutter/material.dart';

void navigateToScreenWithSlideTransition(
  BuildContext context,
  Widget nextScreen,
) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => nextScreen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),//derecha a izquierda
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}

void navigateToScreenWithBottomUpTransition(
  BuildContext context,
  Widget nextScreen,
) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => nextScreen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0), // Iniciamos desde abajo
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}
