import 'dart:ui';

import '../../../utils/image_constants.dart';

class ProjectModel {
  final String projectName;
  final String projectBanner;
  final String projectDescription;
  final String projectAppStoreLink;
  final String projectPlayStoreLink;
  final Color projectThemeColor;

  ProjectModel(
      {required this.projectName,
      required this.projectBanner,
      required this.projectDescription,
      required this.projectAppStoreLink,
      required this.projectPlayStoreLink,
      required this.projectThemeColor});

  static List<ProjectModel> projects = [
    ProjectModel(
        projectName: 'Ziggoo',
        projectBanner: Images.ziggooBanner,
        projectDescription: '',
        projectAppStoreLink: '',
        projectPlayStoreLink: '',
        projectThemeColor: const Color(0xff24a266)
    ),
    ProjectModel(
        projectName: 'Ziggoo Partner',
        projectBanner: Images.ziggooPartnerBanner,
        projectDescription: '',
        projectAppStoreLink: '',
        projectPlayStoreLink: '',
        projectThemeColor: const Color(0xff545454)
    ),
    ProjectModel(
        projectName: 'Ziggoo Rider',
        projectBanner: Images.ziggooRiderBanner,
        projectDescription: '',
        projectAppStoreLink: '',
        projectPlayStoreLink: '',
        projectThemeColor: const Color(0xffb20a3e)
    ),

  ];
}
