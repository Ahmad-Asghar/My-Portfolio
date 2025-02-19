import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/app_text.dart';
import 'package:my_portfolio/utils/app_colors.dart';
import 'package:my_portfolio/utils/navigator_services.dart';
import 'package:my_portfolio/views/about_me/screens/about_me_section.dart';
import 'package:my_portfolio/views/contact_me/screens/contact_section.dart';
import 'package:my_portfolio/views/home/widgets/tab_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../utils/screen_utils.dart';
import '../../services/screens/services_section.dart';
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
          backgroundColor: AppColors.backgroundColor,
          key: scaffoldKey,
          endDrawer: Drawer(width: 220,
            backgroundColor: AppColors.backgroundColor,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              children: [
                TabButton(title: "About Me",screenType: customScreenType,onTap: (){
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToContainer(aboutMeSectionKey);
                },showBackContainer: true,),
                const SizedBox(height: 15,),
                TabButton(title: "Services",screenType: customScreenType,onTap: (){
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToContainer(servicesSectionKey);
                },showBackContainer: true),
                const SizedBox(height: 15,),
                TabButton(title: "Projects",screenType: customScreenType,onTap: (){},showBackContainer: true),
                const SizedBox(height: 15,),
                TabButton(title: "Contact",screenType: customScreenType,onTap: (){
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToContainer(contactSectionKey);
                },showBackContainer: true),
              ],
            ),
          ),
          body: SingleChildScrollView(

            controller: homeScrollController,
            child: Column(
              children: [
                HeroSection(screenType: customScreenType),
                AboutMeSection(screenType: customScreenType),
                ServicesSection(screenType: customScreenType),
                ContactSection(screenType: customScreenType),
              ],
            ),
          ),
        );
      },
    );
  }
}
