import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/screen1.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/screen2.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/screen3.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/screen4.dart';
import 'package:sheikh_muhammed_zeyn/features/home/presentation/screens/screen5.dart';
import '../../../../common/utils/image_utils.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

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
                  'assets/icons/light_background.svg',
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
                    10, // Negative value to push image up and make it appear buried at the top
                left: 0,
                right: 0,
                child: Center(
                  child: Transform.scale(
                    scale: 1.1,
                    child: SvgPicture.asset(
                      'assets/icons/app_bar.svg',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              Positioned(
                top:
                    10, // Negative value to push image up and make it appear buried at the top
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/${getImageDirectory(context)}/app_bar_background.png',
                  // height: size.width * 0.25, // 25% of screen width for logo
                  fit: BoxFit.none,
                ),
              ),
              Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/drawer.svg',
                        fit: BoxFit.none,
                      ),
                      SvgPicture.asset(
                        'assets/icons/settings.svg',
                        fit: BoxFit.none,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 80, // Positioned in the middle of the app bar
                left: 0,
                right: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/arch_design2.svg',
                            fit: BoxFit.none,
                          ),
                          Positioned(
                            top: 2.5,
                            left: 2.5,
                            child: Image.asset(
                              'assets/images/${getImageDirectory(context)}/ustaz2.png',
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      SvgPicture.asset(
                        'assets/icons/name_logo2.svg',
                        fit: BoxFit.none,
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top:
              //       120, // Negative value to push image up and make it appear buried at the top
              //   left: 0,
              //   right: 30,
              //   child: SvgPicture.asset(
              //     'assets/icons/settings.svg',
              //     // width: size.width * 1.1,
              //     fit: BoxFit.none,
              //     alignment: Alignment.topRight,
              //   ),
              // ),

              Positioned(
                top: size.height *
                    0.28, // Center vertically (middle of the screen)
                left: 0,
                right: 0,
                child: Center(
                  // Center horizontally
                  child: Transform.scale(
                    scale: 1,
                    child: SvgPicture.asset(
                      'assets/icons/layer_background.svg',
                      // width: size.width,
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.28 +
                    20, // Adjusted position to fit on larger background
                left: 60, // Adjusted position to fit on larger background
                child: Transform.scale(
                  scale: 1, // Scale set to 2 as requested
                  child: SvgPicture.asset(
                    'assets/icons/title_layer.svg',
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.28 +
                    21, // Adjusted position to fit on larger background
                left: 61, // Adjusted position to fit on larger background
                child: Transform.scale(
                  scale: 1, // Scale maintained at 2
                  child: SvgPicture.asset(
                    'assets/icons/daily_hadith.svg',
                  ),
                ),
              ),

              // Bottom navigation bar using SVG asset with interactive regions
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTapUp: (TapUpDetails details) {
                    // Get the width of the screen
                    final screenWidth = MediaQuery.of(context).size.width;

                    // Calculate which section was tapped (divide into 5 equal parts)
                    final tapPosition = details.localPosition.dx;
                    final sectionWidth = screenWidth / 5;
                    final sectionIndex = (tapPosition / sectionWidth).floor();

                    // Navigate based on which section was tapped
                    switch (sectionIndex) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen1()),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen3()),
                        );
                        break;
                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen4()),
                        );
                        break;
                      case 4:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen5()),
                        );
                        break;
                    }
                  },
                  child: Transform.scale(
                    scale: 1.55,
                    child: SvgPicture.asset(
                      'assets/icons/bottom_bar.svg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit
                          .fill, // Use fill to ensure it covers the entire width
                    ),
                  ),
                ),
              ),

              Positioned(
                  bottom: size.height * 0.48,
                  left: size.width * 0.5 -
                      40, // Center horizontally (assuming icon width ~48px)
                  child: SvgPicture.asset('assets/icons/Categories.svg')),
              Positioned(
                bottom: size.height * 0.35, // Position in bottom section
                left: 0,
                right: 0,
                child: Center(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Transform.scale(
                        scale: 0.65,
                        child: Image.asset(
                          'assets/images/${getImageDirectory(context)}/book.png',
                          height: size.width * 0.25,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 90,
                        child: Transform.scale(
                          scale: size.width * 0.002,
                          child: SvgPicture.asset(
                            'assets/icons/Book.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 90,
                        child: Transform.scale(
                          scale: size.width * 0.003,
                          child: SvgPicture.asset(
                            'assets/icons/book_cover.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.25, // Position in bottom section
                left: 0,
                right: 0,
                child: Center(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Transform.scale(
                        scale: 0.65,
                        child: Image.asset(
                          'assets/images/${getImageDirectory(context)}/audio.png',
                          height: size.width * 0.25,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 90,
                        child: Transform.scale(
                          scale: size.width * 0.002,
                          child: SvgPicture.asset(
                            'assets/icons/Audio.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 90,
                        child: Transform.scale(
                          scale: size.width * 0.003,
                          child: SvgPicture.asset(
                            'assets/icons/audio_cover.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.15, // Position in bottom section
                left: 0,
                right: 0,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.scale(
                        scale: 0.65,
                        child: Image.asset(
                          'assets/images/${getImageDirectory(context)}/video.png',
                          height: size.width * 0.25,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 90,
                        child: Transform.scale(
                          scale: size.width * 0.002,
                          child: SvgPicture.asset(
                            'assets/icons/Video.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 90,
                        child: Transform.scale(
                          scale: size.width * 0.003,
                          child: SvgPicture.asset(
                            'assets/icons/video_cover.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: size.height * 0.15,
                  left: size.width * 0.5 -
                      24, // Center horizontally (assuming icon width ~48px)
                  child: SvgPicture.asset('assets/icons/last_play.svg'))
            ],
          ),
        ],
      ),
    );
  }
}
