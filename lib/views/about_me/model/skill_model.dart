import 'dart:ui';
import 'package:my_portfolio/utils/app_constants.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/image_constants.dart';

class SkillModel{

  final String skillName;
  final String skillDesc;
  final String skillImage;
  final Color skillColor;

  SkillModel({required this.skillName, required this.skillDesc, required this.skillImage, required this.skillColor});

  static List<SkillModel> skills =[

    SkillModel(skillName: "Flutter\nExpertise", skillDesc: AppConstants.flutterSkillText, skillImage: Images.flutterSvg, skillColor: AppColors.flutterColor),
    SkillModel(skillName: "Android\nDevelopment", skillDesc: AppConstants.androidSkillText, skillImage: Images.androidSvg, skillColor: AppColors.androidColor),
    SkillModel(skillName: "iOS\nDevelopment", skillDesc: AppConstants.iosSkillText, skillImage: Images.appleSvg, skillColor: AppColors.white),
    SkillModel(skillName: "Firebase\nMastery", skillDesc: AppConstants.firebaseSkillText, skillImage: Images.firebaseSvg, skillColor: AppColors.firebaseColor),
    SkillModel(skillName: "GitHub\nProficiency", skillDesc: AppConstants.githubSkillText, skillImage: Images.gitSvg, skillColor: AppColors.githubColor),
    SkillModel(skillName: "Jira\nManagement", skillDesc: AppConstants.jiraSkillText, skillImage: Images.jiraSvg, skillColor: AppColors.jiraColor),
    //SkillModel(skillName: "BitBucket", skillDesc: AppConstants.bitbucketSkillText, skillImage: Images.bitbucketSvg, skillColor: AppColors.bitBucketColor),
  ];

}