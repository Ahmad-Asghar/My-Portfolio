import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/home/widgets/tab_bar.dart';


class HeroSection extends StatelessWidget {
  final ScreenType screenType;
  const HeroSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
        color:AppColors.backgroundColor,
         height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
          screenType==ScreenType.desktop?const DesktopIntroSection():
          screenType==ScreenType.tablet?const TabIntroSection():
          const MobileIntroSection(),
            CustomTabBar(screenType: screenType),
          ],
        ));
  }
}



class DesktopIntroSection extends StatelessWidget {
  const DesktopIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(height: 100.h,width: 15.w,color: AppColors.primaryColor),
              SizedBox(
                  height: 80.h,
                  child: Image.asset('assets/images/ahmad.png',fit: BoxFit.fitHeight,))
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
            //  color: Colors.grey,
              width: 60.w,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: 'Hey, I am',color: AppColors.white,fontSize: 24,),
                    CustomTextWidget(
                        title: 'Ahmad\nAsghar,',
                        color: AppColors.primaryColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,height: 0.9),
                    CustomTextWidget(
                        fontFamily: AppConstants.secondFontFamily,
                        title: "\nI'm a Flutter Developer based in Lahore, Pakistan.\n",
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,height: 0.9),
                    CustomTextWidget(
                      title:
                      "Since 2019, I've enjoyed solving complex problems through coding and providing digital services. When I'm not coding, you'll find me cooking, gardening or chilling with friends.",
                      color: AppColors.white,fontSize: 18,
                      fontFamily: AppConstants.secondFontFamily,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TabIntroSection extends StatelessWidget {
  const TabIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(height: 100.h,width: 20.w,color: AppColors.primaryColor),
              SizedBox(
                  height: 75.h,
                  child: Image.asset('assets/images/ahmad.png',fit: BoxFit.fitHeight,))
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 60.w,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h,),
                    CustomTextWidget(title: 'Hey, I am',color: AppColors.white,fontSize: 20,),
                    CustomTextWidget(
                        title: 'Ahmad\nAsghar,',
                        color: AppColors.primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,height: 0.9),
                    CustomTextWidget(
                        fontFamily: AppConstants.secondFontFamily,
                        title: "\nI'm a Flutter Developer based in Lahore, Pakistan.\n",
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,height: 0.9),
                    CustomTextWidget(
                      title:
                      "Since 2019, I've enjoyed solving complex problems through coding and providing digital services. When I'm not coding, you'll find me cooking, gardening or chilling with friends.",
                      color: AppColors.white,fontSize: 18,
                      fontFamily: AppConstants.secondFontFamily,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileIntroSection extends StatelessWidget {
  const MobileIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: 100.w,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h,),
                CustomTextWidget(title: 'Hey, I am',color: AppColors.white,fontSize: 17,maxLines: 1,),
                CustomTextWidget(
                    maxLines: 2,
                    title: 'Ahmad Asghar,',
                    color: AppColors.primaryColor,
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    height: 0.9
                ),
                // Container(
                //   constraints: BoxConstraints(
                //     maxWidth: 40.w
                //   ),
                //   child: CustomTextWidget(
                //       fontFamily: AppConstants.secondFontFamily,
                //       title: "I'm a Flutter Developer based in Lahore, Pakistan.\n",
                //       color: AppColors.white,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w300,height: 0.9),
                // ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.h),
            height: 70.h,
           // width: 100.w,
            child:Image.asset('assets/images/ahmad.png',fit: BoxFit.fitHeight)
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: AppColors.primaryColor.withOpacity(0.5),
              constraints: BoxConstraints(
                  maxWidth: 100.w
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                        fontFamily: AppConstants.secondFontFamily,
                        title: "\nI'm a Flutter Developer based in Lahore, Pakistan.",
                                          fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 0.9),
                    const SizedBox(height: 2),
                    CustomTextWidget(
                      title:
                      "Since 2019, I've enjoyed solving complex problems through coding and providing digital services. When I'm not coding, you'll find me cooking, gardening or chilling with friends.\n",
                      fontSize: 12,
                      fontFamily: AppConstants.secondFontFamily,
                      height: 0.9,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}





class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3) // Shadow color
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10); // Blur effect

    // Draw shadow only on the visible image area
    final Path shadowPath = Path();
    shadowPath.addOval(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(shadowPath, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
