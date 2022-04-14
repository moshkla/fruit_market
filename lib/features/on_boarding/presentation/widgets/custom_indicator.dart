
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/colors.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key,required this.pageController}) : super(key: key);
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          dotBorder: DotBorder(width: 2, color: kMainColor),
          width: SizeConfig.defaultSize! * 1,
          height: SizeConfig.defaultSize! * 1,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          verticalOffset: 0,
        ),
        activeDotDecoration: DotDecoration(
          width: SizeConfig.defaultSize! * 1.5,
          height: SizeConfig.defaultSize! * 1.5,
          color: kMainColor,
          rotationAngle: 180,
          verticalOffset: -1,
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
