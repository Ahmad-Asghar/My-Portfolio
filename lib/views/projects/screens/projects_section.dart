import 'package:my_portfolio/utils/app_exports.dart';

class ProjectsSection extends StatelessWidget {
  final ScreenType screenType;
  const ProjectsSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenType == ScreenType.desktop ? 10.w : screenType == ScreenType.tablet ? 7.w : 5.w,
        vertical: 5.h,
      ),
      key: projectsSectionKey,
      width: 100.w,
      child: Column(
        children: [
          CustomTextWidget(
            title: "Projects",
            color: Colors.white,
            fontSize: screenType == ScreenType.desktop ? 25 :
            screenType == ScreenType.tablet ? 22 : 19,
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
