import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,required this.pageController}) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: pageController,
      children: [
        PageViewItem(image: 'assets/images/fruit.png', title: 'title', subTitle: 'subTitle'),
        PageViewItem(image: 'assets/images/fruit.png', title: 'title', subTitle: 'subTitle'),
        PageViewItem(image: 'assets/images/fruit.png', title: 'title', subTitle: 'subTitle'),
      ],
    );
  }
}
