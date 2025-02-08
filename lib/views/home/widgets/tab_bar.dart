
import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/home/widgets/tab_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTabBar extends StatelessWidget {
  final ScreenType screenType;
  const CustomTabBar({super.key, required this.screenType});


  void _launchLinkedInProfile() async {
    final Uri url = Uri.parse("https://www.linkedin.com/in/ahmad-asghar-778791222/");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $url");
    }
  }
  void _launchInstagramProfile() async {
    final Uri url = Uri.parse("https://www.instagram.com/flutter_devv?igsh=MWJyYmxwbzg3dWV2aA==");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $url");
    }
  }

  void _launchFacebookProfile() async {
    final Uri url = Uri.parse("https://www.facebook.com/profile.php?id=61562971007188");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $url");
    }
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 10.h,
      width: 100.w,
     // color: AppColors.primaryColor,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
                width: 70,
                //color: Colors.grey,
                child: Image.asset(
                    Images.logo,
                    color: AppColors.white,
                    fit: BoxFit.fill
                )
            ),
            screenType==ScreenType.desktop ?  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(title: "About Me",screenType: screenType,onTap: (){},),
                const SizedBox(width: 15,),
                TabButton(title: "Services",screenType: screenType,onTap: (){
                  scrollToContainer(servicesSectionKey);
                },),
                const SizedBox(width: 15,),
                TabButton(title: "Projects",screenType: screenType,onTap: (){},),
                const SizedBox(width: 15,),
                TabButton(title: "Contact",screenType: screenType,onTap: (){
                  scrollToContainer(contactSectionKey);
                },),
              ],
            ):
            // screenType==ScreenType.tablet?
            // CustomTextWidget(title: getGreeting(),color: AppColors.white,fontSize: 14)
            //     :
            const SizedBox(),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabButton(showBackContainer: true,title: Images.linkedin,isImage: true,height: screenType==ScreenType.mobile?16:22,screenType: screenType,onTap: (){
                      _launchLinkedInProfile();
                    },),
                    TabButton(showBackContainer: true,title: Images.instagram,isImage: true,height: screenType==ScreenType.mobile?16:22,screenType: screenType,onTap: (){
                      _launchInstagramProfile();
                    },),
                    TabButton(showBackContainer: true,title: Images.facebook,isImage: true,height: screenType==ScreenType.mobile?16:22,screenType: screenType,onTap: (){
                      _launchFacebookProfile();
                    },),
                  ],
                ),
                screenType==ScreenType.desktop?const SizedBox():
                TabButton(
                  showBackContainer: true,
                  title: Images.drawer,
                  isImage: true,
                  height: screenType == ScreenType.mobile?16:22,
                  screenType: screenType,
                  onTap: () {
                    print("Tap called");
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
