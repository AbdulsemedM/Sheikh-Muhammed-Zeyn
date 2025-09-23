import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/utils/image_utils.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        // Content layout using Stack for precise positioning
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Person image (ustaz.png) at full width across entire top section

            // Background SVG at the bottom of the screen
            Positioned(
              bottom: -30,
              left: 0,
              right: -10,
              height: size.height * 0.6, // 50% of screen height for background
              child: SvgPicture.asset(
                'assets/icons/background.svg',
                width: size.width * 1.1,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Positioned(
              bottom: -size.height * 1, // Position in the transitional space
              // Using alignment and width to ensure symmetrical positioning
              left: -10,
              right: -10,
              child: Center(
                child: Transform.scale(
                  scale: 1.6,
                  child: SvgPicture.asset(
                    'assets/icons/frame.svg',
                    width: size.width * 5.6,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top:
                  -120, // Negative value to push image up and make it appear buried at the top
              left: 0,
              right: 0,
              child: Transform.scale(
                scale: 1.4, // Increased scale to zoom in the image
                child: Image.asset(
                  'assets/images/${getImageDirectory(context)}/ustaz.png',
                  width: size.width,
                  height: size.height *
                      0.7, // 70% of screen height for person image
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),

            // Transitional space - Main thick frame

            // Transitional space - Thin frame overlay
            Positioned(
              bottom: size.height * 0.55, // Same position as main frame
              left: 0,
              right: 0,
              child: Transform.scale(
                scale: 1.6,
                child: SvgPicture.asset(
                  'assets/icons/thin_frame.svg',
                  width: size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

            // Logo overlaid on background in bottom section
            Positioned(
              bottom: size.height * 0.10, // Position in bottom section
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/images/${getImageDirectory(context)}/logo.png',
                  height: size.width * 0.25, // 25% of screen width for logo
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
