import 'package:animate_do/animate_do.dart';
import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/services/widgets/services_card.dart';

class ServicesSection extends StatelessWidget {
  final ScreenType screenType;
  const ServicesSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenType == ScreenType.desktop ? 10.w :
        screenType == ScreenType.tablet ? 7.w : 5.w,
        vertical: 5.h,
      ),
      key: servicesSectionKey,
      color: AppColors.backgroundColor,
      height: screenType==ScreenType.mobile?null: 100.h,
      width: 100.w,
      child: Column(
        children: [
          CustomTextWidget(
            title: "Services",
            color: Colors.white,
            fontSize: screenType == ScreenType.desktop ? 25 :
            screenType == ScreenType.tablet ? 22 : 19,
          ),
          SizedBox(height: 4.h),
          screenType==ScreenType.desktop? Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,  // Ensure it doesn't overflow the container
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.w,
                   childAspectRatio:  1.5,
                  // screenType == ScreenType.tablet ? 1.8 : 3,
                ),
                itemBuilder: (BuildContext context, index) {
                  return ServicesCard(
                      title: "Android Development",
                      subtitle: 'Android development as a service (ADaaS) provides businesses with expert mobile app development, maintenance, and optimization. It includes UI/UX design, API integration, security, and performance enhancements. With ADaaS, companies get scalable, high-quality Android apps tailored to their needs, ensuring seamless user experiences and ongoing support for long-term success.',
                      imageIcon: Images.logo, screenType: screenType, onTap: (){}
                  );
                }
            ),
          ):
          screenType==ScreenType.tablet? Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,  // Ensure it doesn't overflow the container
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.w,
                  childAspectRatio: 1.6
                  // childAspectRatio: screenType == ScreenType.desktop ? 1.5 :
                  // screenType == ScreenType.tablet ? 1.8 : 3,
                ),
                itemBuilder: (BuildContext context, index) {
                  return ServicesCard(
                      title: "Android Development",
                      subtitle: 'Android development as a service (ADaaS) provides businesses with expert mobile app development, maintenance, and optimization. It includes UI/UX design, API integration, security, and performance enhancements. With ADaaS, companies get scalable, high-quality Android apps tailored to their needs, ensuring seamless user experiences and ongoing support for long-term success.',
                      imageIcon: Images.logo, screenType: screenType, onTap: (){}
                  );
                }
            ),
          ):
              Column(
                children: List.generate(3, (index){
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 30.h,
                    width: 80.w,
                   child: ServicesCard(
                       title: "Android Development",
                       subtitle: 'Android development as a service (ADaaS) provides businesses with expert mobile app development, maintenance, and optimization. It includes UI/UX design, API integration, security, and performance enhancements. With ADaaS, companies get scalable, high-quality Android apps tailored to their needs, ensuring seamless user experiences and ongoing support for long-term success.',
                       imageIcon: Images.logo, screenType: screenType, onTap: (){}
                   )
                  );
                }),
              )
          ,
        ],
      ),
    );
  }
}
