import 'package:my_portfolio/utils/app_exports.dart';

class SkillTile extends StatelessWidget {
  final String skillName;
  final String skillDesc;
  final String skillIcon;
  final Color skillColor;
  final bool iconOnLeft;
  final bool isLast;
  final ScreenType screenType;
  const SkillTile({super.key, required this.skillName, required this.skillDesc, required this.skillIcon,this.isLast=false, this.iconOnLeft=true, required this.screenType, required this.skillColor});

  @override
  Widget build(BuildContext context) {
    return screenType==ScreenType.mobile?Padding(
      padding:  EdgeInsets.only(bottom: 3.h),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 7.w),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.w),
                padding:  EdgeInsets.symmetric(horizontal:7.w,vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: skillColor.withOpacity(0.2)
                ),
                child: CustomTextWidget(
                    title: skillDesc,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.secondFontFamily,
                    color: AppColors.white
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 14.w,width: 14.w,decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(skillIcon,height: isLast?65:100),
                ),
              ),
              const SizedBox(width: 10,),
              CustomTextWidget(
                  title: skillName,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: skillName=='iOS'?Colors.white:skillColor
              ),
            ],
          )
        ],
      ),
    ):Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(iconOnLeft)
        Container(
          // color: Colors.grey,
          constraints: BoxConstraints(
              maxWidth: 60.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                  title: skillName,
                  fontSize: screenType==ScreenType.tablet? 30 :35,
                  fontWeight: FontWeight.bold,
                  color: skillColor),
              const SizedBox(height: 5),
              CustomTextWidget(
                  title: skillDesc,
                  fontSize: screenType==ScreenType.tablet? 13 :15,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.secondFontFamily,
                  color: AppColors.white
              ),
            ],
          ),
        ),

        CircleAvatar(
          backgroundColor: skillColor.withOpacity(0.2),
          radius: screenType==ScreenType.tablet? 75: 95,
          child: Center(child: SvgPicture.asset(skillIcon,height:screenType==ScreenType.tablet? isLast? 90 : 125: isLast? 110 : 145)),
        ),
        if(!iconOnLeft)
        Container(
            // color: Colors.grey,
            constraints: BoxConstraints(
                maxWidth: 60.w
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                    title: skillName,
                    fontSize: screenType==ScreenType.tablet? 30 :35,
                    fontWeight: FontWeight.bold,
                    color: skillColor),
                const SizedBox(height: 5),
                CustomTextWidget(
                    title: skillDesc,
                    fontSize: screenType==ScreenType.tablet? 13 :15,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.secondFontFamily,
                    color: AppColors.white
                ),
              ],
            ),
          ),
      ],
    );
  }
}
