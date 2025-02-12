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
    return
    screenType==ScreenType.mobile?
    Padding(
      padding:  EdgeInsets.only(bottom: 3.h),
      child: Stack(
        alignment: iconOnLeft?Alignment.topLeft: Alignment.topRight,
        children: [
          Column(
            crossAxisAlignment: iconOnLeft?CrossAxisAlignment.end:CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 60.w
                ),
                 // height: 7.w,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 7.w),
                  child: CustomTextWidget(
                    textAlign: iconOnLeft? TextAlign.end:TextAlign.start,
                      maxLines: 2,
                      height: 0.9,
                      title: skillName,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: skillColor
                  ),
                ),

              ),
              const SizedBox(height: 3),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.w),
                padding:  EdgeInsets.only(left:3.w,right:3.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: skillColor.withOpacity(0.2)
                ),
                child: Row(
                  children: [
                   if(iconOnLeft) Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top: 12.w),
                          constraints: BoxConstraints(maxWidth: 7.w),
                          child: CustomTextWidget(
                            textAlign: TextAlign.center,
                            height: 0.9,
                            fontWeight: FontWeight.bold,
                            title: "0\n$index",fontSize: 40,
                            color: skillColor
                          ),
                        ),
                         SizedBox(width: 5.w)
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CustomTextWidget(
                          textAlign: TextAlign.center,
                            title: skillDesc,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppConstants.secondFontFamily,
                            color: AppColors.white
                        ),
                      ),
                    ),
                    if(!iconOnLeft) Row(
                      children: [
                        SizedBox(width: 5.w),
                        Container(
                          margin:EdgeInsets.only(top: 12.w),
                          constraints: BoxConstraints(maxWidth: 7.w),
                          child: CustomTextWidget(
                              textAlign: TextAlign.center,
                              height: 0.9,
                              fontWeight: FontWeight.bold,
                              title: "0\n$index",fontSize: 40,
                              color: skillColor
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 25.w,
            width: 25.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.backgroundColor,
            ),
            child: Container(
              height: 25.w,
              width: 25.w,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: skillColor.withOpacity(0.2),
            ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(skillIcon,height: isLast?65:100),
              ),
            ),
          )
        ],
      )
    ):
    Padding(
      padding:  EdgeInsets.only(bottom: 2.h),
      child: Row(
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
                  height: 0.9,
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
                      height: 0.9,
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
      ),
    );
  }
}
