import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/about_me/model/skill_model.dart';
import 'package:my_portfolio/views/about_me/widgets/skill_tile.dart';

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
          SizedBox(height: 1.h),
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
          Column(
            children: List.generate(SkillModel.skills.length, (index){
              final skill = SkillModel.skills[index];
              return SkillTile(
                  skillName: skill.skillName,
                  skillDesc: skill.skillDesc,
                  skillIcon: skill.skillImage,
                  screenType: screenType,
                  skillColor: skill.skillColor,
                  iconOnLeft: index%2==0,
                  isLast: SkillModel.skills[index] == SkillModel.skills.last,

              );
            }),
          ),
        ],
      ),
    );
  }
}
