import 'package:my_portfolio/utils/app_exports.dart';

class AboutMeSection extends StatelessWidget {
  final ScreenType screenType;
  const AboutMeSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenType == ScreenType.desktop ? 10.w :
        screenType == ScreenType.tablet ? 7.w : 5.w,
        vertical: 5.h,
      ),
      key: aboutMeSectionKey,
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          CustomTextWidget(
            title: "About Me",
            color: Colors.white,
            fontSize: screenType == ScreenType.desktop ? 25 :
            screenType == ScreenType.tablet ? 22 : 19,
          ),
          CustomTextWidget(
            title: AppConstants.skillHeadlineText,
            fontFamily: AppConstants.secondFontFamily,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: screenType == ScreenType.desktop ? 18 :
            screenType == ScreenType.tablet ? 15 : 13,
            height: 1.1,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.h),
          // Flutter Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               // color: Colors.grey,
                constraints: BoxConstraints(
                  maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                        title: "Flutter",
                        fontSize: screenType==ScreenType.tablet? 30 :35,
                        fontWeight: FontWeight.bold,
                        color: AppColors.flutterColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                      title: AppConstants.flutterSkillText,
                        fontSize: screenType==ScreenType.tablet? 13 :15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75: 110,
                child: Center(child: SvgPicture.asset(Images.flutterSvg,height:screenType==ScreenType.tablet? 125: 160)),
              )
            ],
          ),
          SizedBox(height: 3.h),
          // Android Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75: 110,
                child: Center(child: SvgPicture.asset(Images.androidSvg,height: screenType==ScreenType.tablet? 125:160)),
              ),
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "Android",fontSize: screenType==ScreenType.tablet? 30:35,fontWeight: FontWeight.bold,color: AppColors.androidColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.androidSkillText,
                        fontSize:screenType==ScreenType.tablet? 13: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          // iOS Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "iOS",fontSize: screenType==ScreenType.tablet? 30:35,fontWeight: FontWeight.bold,color: AppColors.white),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.iosSkillText,
                        fontSize:screenType==ScreenType.tablet? 13: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75: 110,
                child: Center(child: SvgPicture.asset(Images.appleSvg,height:screenType==ScreenType.tablet? 125: 160)),
              )
            ],
          ),
          SizedBox(height: 3.h),
          // Firebase Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius:screenType==ScreenType.tablet? 75: 110,
                child: Center(child: SvgPicture.asset(Images.firebaseSvg,height: screenType==ScreenType.tablet? 125:160)),
              ),
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "Firebase",fontSize:screenType==ScreenType.tablet? 30: 35,fontWeight: FontWeight.bold,color: AppColors.firebaseColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.firebaseSkillText,
                        fontSize: screenType==ScreenType.tablet? 13:15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          // Github Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "Github",fontSize:screenType==ScreenType.tablet? 30: 35,fontWeight: FontWeight.bold,color: AppColors.githubColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.githubSkillText,
                        fontSize: screenType==ScreenType.tablet? 13:15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75: 110,
                child: Center(child: SvgPicture.asset(Images.gitSvg,height: screenType==ScreenType.tablet? 125: 160)),
              )
            ],
          ),
          SizedBox(height: 3.h),
          // Jira Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75:110,
                child: Center(child: SvgPicture.asset(Images.jiraSvg,height:screenType==ScreenType.tablet? 125: 160)),
              ),
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "Jira",fontSize: screenType==ScreenType.tablet? 30: 35,fontWeight: FontWeight.bold,color: AppColors.jiraColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.jiraSkillText,
                        fontSize: screenType==ScreenType.tablet? 13:15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          // Bitbucket Skill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.grey,
                constraints: BoxConstraints(
                    maxWidth: 60.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(title: "BitBucket",fontSize: screenType==ScreenType.tablet? 30: 35,fontWeight: FontWeight.bold,color: AppColors.jiraColor),
                    const SizedBox(height: 5),
                    CustomTextWidget(
                        title: AppConstants.bitbucketSkillText,
                        fontSize: screenType==ScreenType.tablet? 13: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConstants.secondFontFamily,
                        color: AppColors.white
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: screenType==ScreenType.tablet? 75 :110,
                child: Center(child: SvgPicture.asset(Images.bitbucketSvg,height: screenType==ScreenType.tablet? 90: 115)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
