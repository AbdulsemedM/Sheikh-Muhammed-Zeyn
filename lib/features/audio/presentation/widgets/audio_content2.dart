import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/utils/image_utils.dart';

class AudioContent2 extends StatelessWidget {
  const AudioContent2({super.key});

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
                      'assets/icons/audio_app_bar.svg',
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
                      'assets/icons/audio_app_icon.svg',
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
                      'assets/icons/Audio_title.svg',
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
                      'assets/icons/audio_icon.svg',
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
                    'assets/icons/by Shiekh Mohammed(green).svg',
                    width: size.width * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )
          ]),
          Stack(children: [
            Positioned(
              bottom: -40,
              left: 0,
              right: 0,
              child: Transform.scale(
                scaleX: 1.6,
                scaleY: size.height *
                    0.00172, // Responsive scaling based on screen height
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/icons/audio_tab_bar.svg',
                  width: size.width,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: size.height *
                  0.24, // Position at the top of this specific stack
              left: 30, // Position at the left of this specific stack
              child: Transform.scale(
                scale: 1, // Slightly larger scale for better visibility
                child: SvgPicture.asset(
                  'assets/icons/back(green).svg',
                  // width: 40, // Fixed width for consistent sizing
                  // height: 40, // Fixed height for consistent sizing
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.26, // Position at the same vertical position
              left: 0,
              right: 0, // Add right constraint to enable centering
              child: Center(
                // Center the widget horizontally
                child: Transform.scale(
                  scale: 1, // Slightly larger scale for better visibility
                  child: SvgPicture.asset(
                    'assets/icons/Audio Categories.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.29, // Position at the same vertical position
              left: 0,
              right: 0, // Add right constraint to enable centering
              child: Center(
                // Center the widget horizontally
                child: Transform.scale(
                  scale: 1, // Slightly larger scale for better visibility
                  child: SvgPicture.asset(
                    'assets/icons/Line 2 (1).svg',
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.3, // Position at the same vertical position
              left: 0,
              right: 0, // Add right constraint to enable centering
              child: Center(
                // Center the widget horizontally
                child: Transform.scale(
                  scale: 1, // Slightly larger scale for better visibility
                  child: SvgPicture.asset(
                    'assets/icons/1-2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 180,
              left: 0,
              right: 0,
              height: 300, // Add explicit height constraint
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GestureDetector(
                    onTapDown: (TapDownDetails details) {
                      _handleCategoryTap(
                          details.localPosition, constraints, context);
                    },
                    child: Image.asset(
                      'assets/images/${getImageDirectory(context)}/category_2(green).png',
                      fit: BoxFit
                          .contain, // Changed from BoxFit.none to BoxFit.contain
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom:
                  80, // Negative value to push image up and make it appear buried at the top
              left: 0,
              right: 0,
              child: Transform.scale(
                scale: 0.3,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the previous screen
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/back_button.svg',
                    width: size.width,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  void _handleCategoryTap(
      Offset localPosition, BoxConstraints constraints, BuildContext context) {
    // Get the actual container dimensions
    double containerWidth = constraints.maxWidth;
    double containerHeight = constraints.maxHeight;

    // Since we're using BoxFit.contain, the image maintains its aspect ratio
    // and is scaled to fit within the container. We need to calculate the actual
    // image display area within the container.

    // Assume the category image is roughly square
    // Calculate the actual image display area based on BoxFit.contain behavior
    double imageAspectRatio = 1.0; // Assuming square image
    double containerAspectRatio = containerWidth / containerHeight;

    double imageDisplayWidth;
    double imageDisplayHeight;
    double imageOffsetX = 0;
    double imageOffsetY = 0;

    if (containerAspectRatio > imageAspectRatio) {
      // Container is wider than image - image will be constrained by height
      imageDisplayHeight = containerHeight;
      imageDisplayWidth = containerHeight * imageAspectRatio;
      imageOffsetX = (containerWidth - imageDisplayWidth) / 2;
    } else {
      // Container is taller than image - image will be constrained by width
      imageDisplayWidth = containerWidth;
      imageDisplayHeight = containerWidth / imageAspectRatio;
      imageOffsetY = (containerHeight - imageDisplayHeight) / 2;
    }

    // Adjust tap position relative to the actual image area
    double adjustedX = localPosition.dx - imageOffsetX;
    double adjustedY = localPosition.dy - imageOffsetY;

    // Check if tap is within the actual image bounds
    if (adjustedX < 0 ||
        adjustedX > imageDisplayWidth ||
        adjustedY < 0 ||
        adjustedY > imageDisplayHeight) {
      print('Tap outside image bounds');
      return; // Tap is outside the actual image area
    }

    // Calculate column boundaries (equal thirds for top and middle rows)
    double columnWidth = imageDisplayWidth / 3;

    // Calculate row boundaries (each row is 1/3 of the height)
    double rowHeight = imageDisplayHeight / 3;

    // Determine which row was tapped
    int row;
    if (adjustedY < rowHeight) {
      row = 1; // Top row
    } else if (adjustedY < rowHeight * 2) {
      row = 2; // Middle row
    } else {
      row = 3; // Bottom row
    }

    // Determine which column was tapped based on row
    int column = 0;
    
    if (row == 1 || row == 2) {
      // Top and middle rows have 3 equal columns
      if (adjustedX < columnWidth) {
        column = 1; // Left column
      } else if (adjustedX < columnWidth * 2) {
        column = 2; // Middle column
      } else {
        column = 3; // Right column
      }
    } else if (row == 3) {
      // Bottom row only has content in the middle area
      // Check if tap is in the center third (middle column area)
      if (adjustedX >= columnWidth && adjustedX < columnWidth * 2) {
        column = 2; // Only middle column has content in bottom row
      } else {
        // Tap is in empty area (left or right side of bottom row)
        print('Tap in empty area of bottom row');
        return; // Ignore taps in empty areas
      }
    }

    // Debug print to help troubleshoot
    print(
        'Tap at: (${localPosition.dx.toStringAsFixed(1)}, ${localPosition.dy.toStringAsFixed(1)})');
    print(
        'Container: ${containerWidth.toStringAsFixed(1)} x ${containerHeight.toStringAsFixed(1)}');
    print(
        'Image display: ${imageDisplayWidth.toStringAsFixed(1)} x ${imageDisplayHeight.toStringAsFixed(1)}');
    print(
        'Image offset: (${imageOffsetX.toStringAsFixed(1)}, ${imageOffsetY.toStringAsFixed(1)})');
    print(
        'Adjusted tap: (${adjustedX.toStringAsFixed(1)}, ${adjustedY.toStringAsFixed(1)})');
    print(
        'Row boundaries: 0-${rowHeight.toStringAsFixed(1)}, ${rowHeight.toStringAsFixed(1)}-${(rowHeight * 2).toStringAsFixed(1)}, ${(rowHeight * 2).toStringAsFixed(1)}-${imageDisplayHeight.toStringAsFixed(1)}');
    print(
        'Column boundaries: 0-${columnWidth.toStringAsFixed(1)}, ${columnWidth.toStringAsFixed(1)}-${(columnWidth * 2).toStringAsFixed(1)}, ${(columnWidth * 2).toStringAsFixed(1)}-${imageDisplayWidth.toStringAsFixed(1)}');
    print('Detected: Row $row, Column $column');

    // Navigate based on row and column
    _navigateToCategory(context, row, column);
  }

  void _navigateToCategory(BuildContext context, int row, int column) {
    String categoryName = '';

    // Map row and column to category names based on the actual image layout
    // Top row (row 1): 3 categories
    if (row == 1 && column == 1) {
      categoryName = 'KHUTBA';
    } else if (row == 1 && column == 2) {
      categoryName = 'SHURA FIL ISLAM';
    } else if (row == 1 && column == 3) {
      categoryName = 'BAYINAT';
    }
    // Middle row (row 2): 3 categories  
    else if (row == 2 && column == 1) {
      categoryName = 'SEWAID ALIKHAE';
    } else if (row == 2 && column == 2) {
      categoryName = 'KITABU TEWHID';
    } else if (row == 2 && column == 3) {
      categoryName = 'NEYLUL AWTAR';
    }
    // Bottom row (row 3): only 1 category in the center
    else if (row == 3 && column == 2) {
      categoryName = 'ANTEKO ALLAH NEH';
    }
    // If no valid category is found, return without navigation
    else {
      print('No category found for Row $row, Column $column');
      return;
    }

    // Navigate to the category screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            CategoryPlaceholderScreen(categoryName: categoryName),
      ),
    );
  }
}

class CategoryPlaceholderScreen extends StatelessWidget {
  final String categoryName;

  const CategoryPlaceholderScreen({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.brown[700],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              size: 80,
              color: Colors.brown[600],
            ),
            const SizedBox(height: 20),
            Text(
              categoryName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Content coming soon...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
