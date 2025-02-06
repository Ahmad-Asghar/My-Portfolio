import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/home/widgets/tab_bar.dart';


class IntroSection extends StatelessWidget {
  final ScreenType screenType;
  const IntroSection({super.key, required this.screenType});

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
          MobileIntroSection(),
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
                    CustomTextWidget(title: 'Pakistani born, Lahore-based Flutter Developer with 5+ years '
                        'of industry experience. Passionate about crafting scalable, high-performance mobile applications. Expert in Firebase, RESTful APIs, and UI/UX design.'
                        'Skilled in GetX for state management.'
                        'Dedicated to innovation, problem-solving, and delivering exceptional user experiences. Always learning and adapting to new technologies.',
                      color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w100,),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: 'Hey, I am',color: AppColors.white,fontSize: 20,),
                    CustomTextWidget(
                        title: 'Ahmad\nAsghar,',
                        color: AppColors.primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,height: 0.9),
                    CustomTextWidget(title: 'Pakistani born, Lahore-based Flutter Developer with 5+ years '
                        'of industry experience. Passionate about crafting scalable, high-performance mobile applications. Expert in Firebase, RESTful APIs, and UI/UX design.'
                        'Skilled in GetX for state management.'
                        'Dedicated to innovation, problem-solving, and delivering exceptional user experiences. Always learning and adapting to new technologies.',
                      color: AppColors.white,fontSize: 12,fontWeight: FontWeight.w100,),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 10.h,),
        SizedBox(
          width: 90.w,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(title: 'Hey, I am',color: AppColors.white,fontSize: 17,maxLines: 1,),
                CustomTextWidget(
                  maxLines: 2,
                    title: 'Ahmad\nAsghar,',
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,height: 0.9),
                // CustomTextWidget(
                //   maxLines: 6,
                //   title: 'Pakistani born, Lahore-based Flutter Developer with 5+ years '
                //     'of industry experience. Passionate about crafting scalable, high-performance mobile applications. Expert in Firebase, RESTful APIs, and UI/UX design.'
                //     'Skilled in GetX for state management.'
                //     'Dedicated to innovation, problem-solving, and delivering exceptional user experiences. Always learning and adapting to new technologies.',
                //   color: AppColors.white,fontSize: 11,fontWeight: FontWeight.w100,),
              ],
            ),
          ),
        ),
        SizedBox(
            height: 45.h,
            child: Image.asset('assets/images/ahmad.png',fit: BoxFit.fitHeight,))
      ],
    );
  }
}