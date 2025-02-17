import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portfolio/utils/app_exports.dart';

import '../../../utils/user_pref_utils.dart';


class HoverListTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool isMobile;
  const HoverListTile({super.key, required this.title, required this.subtitle, required this.image,this.isMobile=false});

  @override
  _HoverListTileState createState() => _HoverListTileState();
}

class _HoverListTileState extends State<HoverListTile> {
  bool isHovered = false;

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    showToast(text);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(widget.image, color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              constraints: BoxConstraints(
                  maxWidth: widget.isMobile?40.w:30.w
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title:widget.title, fontSize: 14),
                  CustomTextWidget(
                    maxLines:widget.isMobile? 2:1,
                    title: widget.subtitle,
                    fontSize:widget.isMobile? 12: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.secondFontFamily,
                  ),
                ],
              ),
            ),
            const Spacer(),
            if (widget.isMobile || isHovered)
              IconButton(
                onPressed: () => copyToClipboard(widget.subtitle),
                icon: const Icon(Icons.copy,size: 15),
              ),
          ],
        ),
      ),
    );
  }
}