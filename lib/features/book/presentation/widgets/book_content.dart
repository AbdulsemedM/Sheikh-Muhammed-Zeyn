import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookContent extends StatelessWidget {
  const BookContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // height: size.height * 0.6, // 50% of screen height for background
              child: SvgPicture.asset(
                'assets/icons/book_background.svg',
                width: size.width * 1,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Positioned(
              top: -140,
              left: 0,
              right: 0,
              // height: size.height * 0.6, // 50% of screen height for background
              child: SvgPicture.asset(
                'assets/icons/book_cali.svg',
                width: size.width * 1,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  // height: size.height * 0.6, // 50% of screen height for background
                  child: Transform.scale(
                    scale: 0.9,
                    child: SvgPicture.asset(
                      'assets/icons/book_app_bar.svg',
                      width: size.width * 1,
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                // Using Positioned widgets instead of Row to avoid overflow
                Positioned(
                  top: -10,
                  left: 40,
                  child: Transform.scale(
                    scale: 0.4,
                    child: SvgPicture.asset(
                      'assets/icons/book_app_icon.svg',
                      width: size.width * 0.3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: size.width * 0.35,
                  child: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(
                      'assets/icons/Book\'s.svg',
                      width: size.width * 0.3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: 90,
                  child: Transform.scale(
                    scale: 0.2,
                    child: SvgPicture.asset(
                      'assets/icons/book_icon.svg',
                      width: size.width * 0.3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 20,
                  left: size.width * 0.35,
                  child: SvgPicture.asset(
                    'assets/icons/by Shiekh Mohammed.svg',
                    width: size.width * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )
          ]),
          Positioned(
            bottom: -40,
            left: 0,
            right: 0,
            child: Transform.scale(
              scaleX: 1.6,
              scaleY: 1.5,
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                'assets/icons/book_tab_bar.svg',
                width: size.width,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
