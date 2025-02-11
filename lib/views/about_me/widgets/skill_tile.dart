import 'package:my_portfolio/utils/app_exports.dart';

class SkillTile extends StatelessWidget {
  final String skillName;
  final String skillDesc;
  final String skillIcon;
  final Color skillColor;
  final bool iconOnLeft;
  final bool isLast;
  final ScreenType screenType;
  final int index;
  const SkillTile({super.key, required this.skillName, required this.skillDesc, required this.skillIcon,this.isLast=false, this.iconOnLeft=true, required this.screenType, required this.skillColor, required this.index});

  @override
  Widget build(BuildContext context) {
    return screenType==ScreenType.mobile?Padding(
      padding:  EdgeInsets.only(bottom: 3.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 60.w
                ),
                 // height: 7.w,
                child: Padding(
                  padding:  EdgeInsets.only(right: 7.w),
                  child: CustomTextWidget(
                    textAlign: TextAlign.end,
                      maxLines: 2,
                      height: 0.9,
                      title: skillName,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: skillName=='iOS'?Colors.white:skillColor
                  ),
                ),

              ),
              const SizedBox(height: 3),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.w),
                padding:  EdgeInsets.only(left:3.w,right:3.w,top: 15,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: skillColor.withOpacity(0.2)
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 10.w),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomTextWidget(
                            textAlign: TextAlign.center,
                            height: 0.9,
                            fontWeight: FontWeight.bold,
                            title: "0$index",fontSize: 45,
                            color: skillColor
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CustomTextWidget(
                        textAlign: TextAlign.center,
                          title: skillDesc,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppConstants.secondFontFamily,
                          color: AppColors.white
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 25.w,width: 25.w,decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
          ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(skillIcon,height: isLast?65:100),
            ),
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
