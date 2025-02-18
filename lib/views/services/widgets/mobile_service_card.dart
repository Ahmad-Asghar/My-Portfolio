import 'package:my_portfolio/utils/app_exports.dart';

class MobileServicesCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imageIcon;
  final ScreenType screenType;
  final Function() onTap;
  const MobileServicesCard({super.key, required this.title, required this.subtitle, required this.imageIcon, required this.screenType, required this.onTap,});

  @override
  _MobileServicesCardState createState() => _MobileServicesCardState();
}

class _MobileServicesCardState extends State<MobileServicesCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.white.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10,right: 10,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isHovered?AppColors.primaryColor: AppColors.primaryColor,
                  ),
                  height:
                  widget.screenType==ScreenType.desktop?70:
                  widget.screenType==ScreenType.tablet?60:50,
                  width:
                  widget.screenType==ScreenType.desktop?70:
                  widget.screenType==ScreenType.tablet?60:50,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(widget.imageIcon, color: isHovered?AppColors.white: AppColors.backgroundColor),
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextWidget(
                    title: widget.title,
                    color: isHovered?AppColors.primaryColor: AppColors.white,
                    fontSize: 16
                ),
                const SizedBox(height: 8),
                CustomTextWidget(
                  textAlign: TextAlign.center,
                  title: widget.subtitle,
                  color: isHovered?AppColors.backgroundColor: AppColors.white,
                  fontSize:
                  widget.screenType==ScreenType.desktop?12:
                  widget.screenType==ScreenType.tablet?12:12,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.secondFontFamily,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(5)
              )
            ),
            height: 2.h,
            width: double.infinity,
          )
        ],
      ),
    );
  }

}