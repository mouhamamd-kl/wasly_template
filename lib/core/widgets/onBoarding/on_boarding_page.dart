import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/styles/custom_text_styles.dart';
import 'package:wasly_template/core/widgets/onBoarding/PageModel.dart';
import 'package:wasly_template/core/widgets/highlight_random_word.dart';

class OnboardingPage extends StatelessWidget {
  final List<PageModel> pages;
  final VoidCallback onFinish;

  const OnboardingPage({Key? key, required this.pages, required this.onFinish})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages
          .map(
            (page) => PageViewModel(
              titleWidget: HighlightRandomWord(
                text: page.title,
                highlightColor: page.titleHighlightColor,
                originalColor: page.titleOriginalColor,
                style: page.titleStyle,
                textAlign: TextAlign.center,
              ),
              bodyWidget: Text(
                page.bodyText,
                textAlign: TextAlign.center,
                style: page.bodyStyle,
              ),
              image: _buildImage(page.imagePath),
              decoration: page.pageDecoration,
            ),
          )
          .toList(),
      onDone: onFinish,
      onSkip: onFinish,
      showSkipButton: true,
      skip: Text(
        'Skip',
        style: CustomTextStyles.buttonText1.copyWith(
          color: AppColors.primaryBase,
        ),
      ),
      next: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: AppColors.primaryBase,
        ),
        child: Icon(Icons.arrow_forward, color: AppColors.backgroundLight),
      ),
      done: Text('Done',
          style: CustomTextStyles.buttonText1
              .copyWith(color: AppColors.primaryBase)),
      curve: Curves.fastLinearToSlowEaseIn,
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: AppColors.textPrimaryBase.withValues(alpha: 0.3),
        activeSize: Size(22.0, 10.0),
        activeColor: AppColors.textPrimaryBase,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  Widget _buildImage(String assetName, {double? width}) {
    return Image.asset(
      assetName,
      width: width ?? Get.width,
    );
  }
}
