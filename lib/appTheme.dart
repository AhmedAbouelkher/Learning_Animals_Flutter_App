import 'package:flutter/material.dart';
import 'size_config.dart';

class AppColors {
  AppColors._();
  static const Color appBackGroundColor = Color(0xFFFFFFFF);
  static const Color textColor1 = Color(0xFFBEA8BF);
  static const Color textColor2 = Color(0xFFFFF1D6);
  static const Color textColor3 = Color(0xFFFED9A8);
  static final Color textColor4 = Color(0xFFD0E6FA);
//  static const Color iconsBackGroundColor = Color(0xFFF8F8F8);
  static final Color iconsBackGroundColor = Colors.black.withAlpha(10);
  static final Color iconsGreyColor = Colors.grey;
}

class AppTexts {
  AppTexts._();
  static final String homeScreenTopText = '''Learning
Animals''';
  static const String homeScreenPopularSection = '''Populer Animals''';
  static const String homeScreenAnimalTypes = '''Animal Types''';
  static const String polarBearTopParagraph = '''
  Polar bear moms give birth to one to
  three cubs.''';
  static const String polarBearUnderImageText = '''VIEW POLER BEAR SLIDESHOW''';
  static const String polarBearFullParagraph =
      '''Poler bears live along shores and on sea ice in the icy cold Arctic. When sea sice forms over the ocean in clold weather, many poler bear, except pregnant females, head out onto the ice to hunt seals.''';
  static const String animalKeyFacts = '''Key Facts''';
  static const String animalWeightUnderText = '''900 to 1.600 pounds''';
  static const String animalSizeUnderText = '''Head & body 7.25 to 8 feet''';
}

//double kRadius = 1 * SizeConfig.heightMultiplier;
double kSearchIconOverlayRadius = 6 * SizeConfig.heightMultiplier;
