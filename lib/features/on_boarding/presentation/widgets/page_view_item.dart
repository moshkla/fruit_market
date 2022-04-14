import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 10),
        SizedBox(
            height: SizeConfig.defaultSize! * 33,
            child: Image.asset(image)),
        const VerticalSpace(value: 1),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: SizeConfig.defaultSize!*2),),
        const VerticalSpace(value: 1.5),
        Text(subTitle,style: TextStyle(fontSize:  SizeConfig.defaultSize!*1.5,fontWeight: FontWeight.bold,color: Colors.grey),),
      ],
    );
  }
}
