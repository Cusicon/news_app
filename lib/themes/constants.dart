import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

const double pagePaddingSize = 24.0;
const double minPaddingSize = 8.0;
const double maxSizedBox = 16.0;
const double borderRadius = 16.0;
const double minSizedBox = 8.0;

Future<PaletteColor> generatePalette(
  String imagePath,
) async {
  PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
    NetworkImage(imagePath),
    size: const Size(100, 150),
    maximumColorCount: 20,
  );

  return paletteGenerator.dominantColor!;
}
