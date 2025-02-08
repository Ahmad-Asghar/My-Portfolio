import 'package:my_portfolio/utils/app_exports.dart';

class ServicesCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imageIcon;
  final ScreenType screenType;
  final Function() onTap;
  const ServicesCard({super.key, required this.title, required this.subtitle, required this.imageIcon, required this.screenType, required this.onTap,});

  @override
  _ServicesCardState createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print("Container Height: ${constraints.maxHeight}");
        print("Min Height: ${constraints.minHeight}");
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: GestureDetector(
            onTap: widget.onTap,
            child: AnimatedContainer(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 300),
             // padding: const EdgeInsets.only(top: 10, left: 10,right: 10,bottom: 10),
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
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(5),
                            bottomRight: const Radius.circular(5),
                            topRight: Radius.circular(isHovered?5:0),
                            topLeft: Radius.circular(isHovered?5:0),
                          ),
                          color: AppColors.white,
                        ),
                        height:isHovered?constraints.maxHeight: constraints.maxHeight * 0.05,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10,right: 10,bottom: 10),
                    child: Column(
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
                            padding: const EdgeInsets.all(10.0),
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
                        Expanded(
                          child: CustomTextWidget(
                            maxLines: 4,
                            textAlign: TextAlign.center,
                            title: widget.subtitle,
                            color: isHovered?AppColors.backgroundColor: AppColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppConstants.secondFontFamily,
                          ),
                        ),
                        SizedBox(height: constraints.maxHeight*0.05),// Example usage
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}