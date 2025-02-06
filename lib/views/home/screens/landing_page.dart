import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/app_text.dart';
import 'package:my_portfolio/utils/app_colors.dart';
import 'package:my_portfolio/utils/navigator_services.dart';
import 'package:my_portfolio/views/home/widgets/tab_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../utils/screen_utils.dart';
import '../widgets/intro_section.dart';
import '../widgets/tab_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screeType) {
        ScreenType customScreenType = getCustomScreenType(context);
        return Scaffold(
          key: scaffoldKey,
          endDrawer: Drawer(width: 220,
            backgroundColor: AppColors.backgroundColor,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              children: [
                TabButton(title: "Home",screenType: customScreenType,onTap: (){},showBackContainer: true,),
                const SizedBox(height: 15,),
                TabButton(title: "About Me",screenType: customScreenType,onTap: (){},showBackContainer: true),
                const SizedBox(height: 15,),
                TabButton(title: "Projects",screenType: customScreenType,onTap: (){},showBackContainer: true),
                const SizedBox(height: 15,),
                TabButton(title: "Contact",screenType: customScreenType,onTap: (){},showBackContainer: true),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                IntroSection(screenType: customScreenType),
                // Container(
                //   height: 10.h, // Adjust the height of the gradient container
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       begin: Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //       colors: [
                //         AppColors.backgroundColor, // Slight transparency to blend better
                //         AppColors.primaryColor,
                //       ],
                //     ),
                //   ),
                // ),
                Container(color: AppColors.primaryColor,height: 100.h,width: 100.w,),
              ],
            ),
          ),
        );
      },
    );
  }
}
