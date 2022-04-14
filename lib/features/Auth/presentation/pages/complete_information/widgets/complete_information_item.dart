import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons_widget.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.defaultSize!*2,
            fontWeight: FontWeight.w600
          ),
        ),
        VerticalSpace(value: 2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        ),

      ],
    );
  }
}
