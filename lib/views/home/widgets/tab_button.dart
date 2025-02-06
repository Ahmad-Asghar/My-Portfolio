import 'package:my_portfolio/utils/app_exports.dart';

class TabButton extends StatefulWidget {
  final String title;
  final bool isImage;
  final bool showBackContainer;
  final double height;
  final ScreenType screenType;
  final Function() onTap;
  const TabButton({super.key, required this.title,
    this.isImage=false,
    this.showBackContainer=false,
    this.height=20, required this.screenType, required this.onTap});

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(horizontal:
          !widget.isImage? 15:
          8,vertical: 8),
          decoration:widget.showBackContainer? BoxDecoration(
            color: isHovered ? AppColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ):null,
          child: widget.isImage? Image.asset(widget.title,
            height: widget.height,
            color: isHovered ? AppColors.primaryColor : AppColors.white,):
          CustomTextWidget(
            fontSize: 14,
            title: widget.title,
            fontWeight: isHovered?FontWeight.bold:FontWeight.w500,
            color: isHovered ? AppColors.primaryColor : AppColors.white,
          ),
        ),
      ),
    );
  }
}