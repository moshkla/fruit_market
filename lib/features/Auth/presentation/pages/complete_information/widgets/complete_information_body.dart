import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons_widget.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

import 'complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          VerticalSpace(value: 5),
          CompleteInfoItem(
            text: 'Enter Your Name',
          ),
          VerticalSpace(value: 5),
          CompleteInfoItem(
            text: 'Enter Your Phone Number',
          ),
          VerticalSpace(value: 5),
          CompleteInfoItem(
            text: 'Enter Your Address',
            maxLines: 5,
          ),
          VerticalSpace(value: 5),
          CustomGeneralButton(text: 'Login', onTap: () {}),
        ],
      ),
    );
  }
}
