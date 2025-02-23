import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/views/projects/model/project_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class ProjectsSection extends StatelessWidget {
  final ScreenType screenType;
  const ProjectsSection({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(
        //horizontal: screenType == ScreenType.desktop ? 10.w : screenType == ScreenType.tablet ? 7.w : 5.w,
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
          Expanded(
            child: SizedBox(
              width: 100.w,
              child: CarouselSlider(
                items: List.generate(
                    ProjectModel.projects.length,
                        (index) => _buildProjectItem(index,ProjectModel.projects[index])
                ),
                options: CarouselOptions(
                  padEnds: true,
                 // autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  viewportFraction: screenType==ScreenType.desktop? 0.35:screenType==ScreenType.tablet? 0.6:0.8,
                  enableInfiniteScroll: true,
                  enlargeFactor: 0.5,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProjectItem(int index,ProjectModel project) {
    return Container(
      margin:  const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: project.projectThemeColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(15),
                topRight:Radius.circular(15),
              ),

              child: Image.asset(project.projectBanner,fit: BoxFit.contain,)),
        ],
      ),
    );
  }
}
