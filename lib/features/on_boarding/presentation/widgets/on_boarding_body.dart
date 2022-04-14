import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/colors.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons_widget.dart';
import 'package:fruits_market/features/Auth/presentation/pages/login/login_view.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: CustomPageView(
            pageController: pageController!,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients?true:false,
          child: Positioned(
              bottom: SizeConfig.defaultSize! * 12,
              child: Align(
                  alignment: Alignment.center,
                  child: CustomIndicator(pageController: pageController!,))),
        ),
        Positioned(
            top: SizeConfig.defaultSize! * 5,
            right: 50,
            child: Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: SizeConfig.defaultSize! * 3,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              text:pageController!.hasClients?(pageController!.page==2?'Get Started': 'Next'):'Next',
              onTap: () {
                if(pageController!.page! < 2 ){
                  pageController!.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Get.to(()=>LoginView(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                }
              },
            )),
      ],
    );
  }
}
