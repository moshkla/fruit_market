import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/constants/colors.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons_widget.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        VerticalSpace(value: 10),
        SizedBox(
            height:SizeConfig.defaultSize! *30,child: Image.asset(kLogo)),
        Text(
          'FRUITS MARKET',
          style: TextStyle(
            color: kMainColor,
            fontSize: SizeConfig.defaultSize!*2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(color:Colors.red,icon:FontAwesomeIcons.googlePlusG, text: 'Log in With',
                  onTap: () {
                  Get.to(()=>CompleteInformationView(),transition: Transition.fade,duration: Duration(milliseconds: 500));
                  },),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(color:Colors.blue,icon:FontAwesomeIcons.facebookSquare, text: 'Log in With',
                  onTap: () {
                    Get.to(()=>CompleteInformationView(),transition: Transition.fade,duration: Duration(milliseconds: 500));

                  },),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
