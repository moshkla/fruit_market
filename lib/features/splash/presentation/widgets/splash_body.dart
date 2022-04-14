import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/colors.dart';
import 'package:fruits_market/features/on_boarding/presentation/on_board_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    fadingAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    
    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        children: [
          Spacer(),
          FadeTransition(
            opacity: animationController!,
            child: Text(
              'FRUITS MARKET',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Image.asset('assets/images/fruit.png'),
        ],
      ),
    );
  }
}

void goToNextView(){
  Future.delayed(Duration(seconds: 3),(){
Get.to(()=>OnBoardingView(),transition: Transition.fade);
  });
}