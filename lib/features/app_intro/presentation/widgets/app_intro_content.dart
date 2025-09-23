import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/utils/image_utils.dart';

class AppIntroContent extends StatelessWidget {
  const AppIntroContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
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
                bottom: 0,
                left: 0,
                right: 0,
                // height: size.height * 0.6, // 50% of screen height for background
                child: SvgPicture.asset(
                  'assets/icons/full_background.svg',
                  width: size.width * 1.1,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              // Positioned(
              //   bottom: -size.height * 1, // Position in the transitional space
              //   // Using alignment and width to ensure symmetrical positioning
              //   left: -10,
              //   right: -10,
              //   child: Center(
              //     child: Transform.scale(
              //       scale: 1.6,
              //       child: SvgPicture.asset(
              //         'assets/icons/frame.svg',
              //         width: size.width * 5.6,
              //         fit: BoxFit.fitWidth,
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                top:
                    20, // Negative value to push image up and make it appear buried at the top
                left: 30,
                right: 0,
                child: Image.asset(
                  'assets/images/${getImageDirectory(context)}/name_logo.png',
                  fit: BoxFit.none,
                  alignment: Alignment.topLeft,
                ),
              ),
      
              // Transitional space - Main thick frame
      
              // Transitional space - Thin frame overlay
              Positioned(
                top: size.height * 0.26, // Same position as main frame
                left: 0,
                right: 0,
                child: Transform.scale(
                  scale: 1.6,
                  child: SvgPicture.asset(
                    'assets/icons/arch_design.svg',
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.17, // Same position as main frame
                left: 0,
                right: 0,
                child: Transform.scale(
                  scale: 0.65,
                  child: SvgPicture.asset(
                    'assets/icons/app_intro.svg',
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.13, // Same position as main frame
                left: 0,
                right: 0,
                child: Transform.scale(
                  scale: 0.3,
                  child: SvgPicture.asset(
                    'assets/icons/next.svg',
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                bottom: -size.height * 0.24, // Same position as main frame
                left: 0,
                right: 0,
                child: Transform.scale(
                  scale: 1.15,
                  child: SvgPicture.asset(
                    'assets/icons/bottom_design.svg',
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
      
              // Logo overlaid on background in bottom section
              // Positioned(
              //   bottom: size.height * 0.10, // Position in bottom section
              //   left: 0,
              //   right: 0,
              //   child: Center(
              //     child: Image.asset(
              //       'assets/images/${getImageDirectory(context)}/logo.png',
              //       height: size.width * 0.25, // 25% of screen width for logo
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
