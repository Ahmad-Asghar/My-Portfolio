import 'package:my_portfolio/utils/app_exports.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/contact_detail_tile.dart';
class ContactSection extends StatelessWidget {
  final ScreenType screenType;
  const ContactSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenType == ScreenType.desktop ? 10.w :
        screenType == ScreenType.tablet ? 7.w : 5.w,
        vertical: 5.h,
      ),
      key: contactSectionKey,
      color: AppColors.backgroundColor,
      height:screenType == ScreenType.mobile?null: 100.h,
      width: 100.w,
      child:
      screenType==ScreenType.desktop?const DesktopContactSection():
      screenType==ScreenType.tablet?const TabContactSection():const MobileContactSection(),
    );
  }
}



class DesktopContactSection extends StatefulWidget {
  const DesktopContactSection({super.key});

  @override
  State<DesktopContactSection> createState() => _DesktopContactSectionState();
}

class _DesktopContactSectionState extends State<DesktopContactSection> {

  bool isListTileHovered = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width:80.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 5.h),
            width: 35.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            height: 90.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title: "Get in touch",color: AppColors.orangeColor,maxLines: 2,fontSize: 13,),
                  SizedBox(height: 2.h,),
                  CustomTextWidget(
                    title: "Let's Chat,Reach me Out",
                    fontSize: 35,
                    color: AppColors.backgroundColor,
                    height: 0.9,
                    fontFamily: AppConstants.secondFontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 1.5.h,),
                  CustomTextWidget(
                    color: AppColors.backgroundColor,
                    title: "Have questions or feedback? I'm here to help. Send me a message, and I'll respond with in 24 hours",
                    fontSize: 12,
                    fontFamily: AppConstants.secondFontFamily,
                    fontWeight: FontWeight.bold
                  ),
                  SizedBox(height: 2.h,),
                  Divider(color: AppColors.greySettingsColor,height: 0,),
                  SizedBox(height: 2.h,),
                  const Row(
                    children: [
                      Expanded(child: CustomTextField(title:"First Name",hintText: "First Name")),
                      SizedBox(width: 8),
                      Expanded(child: CustomTextField(title:"Last Name",hintText: "Last Name")),
                    ],
                  ),
                  SizedBox(height: 1.2.h,),
                  const CustomTextField(hintText: "Email Address",title: "Email Address",),
                  SizedBox(height: 1.2.h,),
                  const CustomTextField(hintText: "Leave a message for me..",title: "Message",maxLines: 8),
                  SizedBox(height: 1.2.h,),
                  Center(
                    child: CustomMainButton(
                        color: AppColors.primaryColor,
                        onTap: (){},
                        child: CustomTextWidget(
                          title: 'Send',
                          color: AppColors.white,
                          fontSize: 13
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Column(
            children: [
              Container(
                width: 43.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/ahmad_back.jpg'),fit: BoxFit.cover)
                ),
                height: 55.h,
              ),
              SizedBox(height: 2.h),
              Container(
                width:  43.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.white,
                ),
                height: 33.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HoverListTile(title: 'Email', subtitle: 'ahmadasghar.appdev@gmail.com', image: Images.email),
                    HoverListTile(title: 'Phone', subtitle: '+923203838849', image: Images.phone),
                    HoverListTile(title: 'Whatsapp', subtitle: '+923203838849', image: Images.whatsapp),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class TabContactSection extends StatelessWidget {
  const TabContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width:86.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 5.h),
            width: 38.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            height: 90.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title: "Get in touch",color: AppColors.orangeColor,maxLines: 2,fontSize: 13,),
                  SizedBox(height: 1.h,),
                  CustomTextWidget(title: "Let's Chat,Reach me Out",fontSize: 25,color: AppColors.backgroundColor,height: 0.9,fontFamily: AppConstants.secondFontFamily,
                    fontWeight: FontWeight.bold,),
                  SizedBox(height: 1.h,),
                  CustomTextWidget(color: AppColors.backgroundColor,title: "Have questions or feedback? I'm here to help. Send me a message, and I'll respond with in 24 hours",fontSize: 10,fontFamily: AppConstants.secondFontFamily,
                    fontWeight: FontWeight.bold,),
                  SizedBox(height: 1.h,),
                  Divider(color: AppColors.greySettingsColor,height: 0,),
                  SizedBox(height: 2.h,),
                  const Row(
                    children: [
                      Expanded(child: CustomTextField(title:"First Name",hintText: "First Name")),
                      SizedBox(width: 8),
                      Expanded(child: CustomTextField(title:"Last Name",hintText: "Last Name")),
                    ],
                  ),
                  SizedBox(height: 1.2.h,),
                  const CustomTextField(hintText: "Email Address",title: "Email Address",),
                  SizedBox(height: 1.2.h,),
                  const CustomTextField(hintText: "Leave a message for me..",title: "Message",maxLines: 6),
                  SizedBox(height: 1.2.h,),
                  Center(
                    child: CustomMainButton(
                        color: AppColors.primaryColor,
                        onTap: (){},
                        child: CustomTextWidget(
                            title: 'Send',
                            color: AppColors.white,
                            fontSize: 12
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Column(
            children: [
              Container(
                width: 46.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(image: AssetImage('assets/images/ahmad_back.jpg'),fit: BoxFit.cover)
                ),
                height: 55.h,
              ),
              SizedBox(height: 2.h,),
              Container(
                width:  46.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.white,
                ),
                height: 33.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HoverListTile(title: 'Email', subtitle: 'ahmadasghar.appdev@gmail.com', image: Images.email),
                    HoverListTile(title: 'Phone', subtitle: '+923203838849', image: Images.phone),
                    HoverListTile(title: 'Whatsapp', subtitle: '+923203838849', image: Images.whatsapp),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 5.h,bottom: 5.h),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(title: "Get in touch",color: AppColors.orangeColor,maxLines: 2,fontSize: 13,),
                SizedBox(height: 1.h,),
                CustomTextWidget(title: "Let's Chat,Reach me Out",fontSize: 25,color: AppColors.backgroundColor,height: 0.9,fontFamily: AppConstants.secondFontFamily,
                  fontWeight: FontWeight.bold,),
                SizedBox(height: 1.h,),
                CustomTextWidget(color: AppColors.backgroundColor,title: "Have questions or feedback? I'm here to help. Send me a message, and I'll respond with in 24 hours",fontSize: 11,fontFamily: AppConstants.secondFontFamily,
                  fontWeight: FontWeight.bold,),
                SizedBox(height: 1.h,),
                Divider(color: AppColors.greySettingsColor,height: 0,),
                SizedBox(height: 2.h,),
                CustomTextField(title:"First Name",hintText: "First Name"),
                SizedBox(height: 1.2),
                CustomTextField(title:"Last Name",hintText: "Last Name"),
                SizedBox(height: 1.2.h,),
                const CustomTextField(hintText: "Email Address",title: "Email Address",),
                SizedBox(height: 1.2.h,),
                const CustomTextField(hintText: "Leave a message for me..",title: "Message",maxLines: 6),
                SizedBox(height: 1.2.h,),
                Center(
                  child: CustomMainButton(
                      color: AppColors.primaryColor,
                      onTap: (){},
                      child: CustomTextWidget(
                          title: 'Send',
                          color: AppColors.white,
                          fontSize: 12
                      )
                  ),
                )
              ],
            ),
          ),
        ),
         SizedBox(height: 2.h),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
          ),
          height: 33.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverListTile(title: 'Email', subtitle: 'ahmadasghar.appdev@gmail.com', image: Images.email,isMobile: true,),
              HoverListTile(title: 'Phone', subtitle: '+923203838849', image: Images.phone,isMobile: true,),
              HoverListTile(title: 'Whatsapp', subtitle: '+923203838849', image: Images.whatsapp,isMobile: true,),
            ],
          ),
        )
      ],
    );
  }
}




