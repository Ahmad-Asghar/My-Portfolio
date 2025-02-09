
import '../../../utils/image_constants.dart';

class ServiceModel{

  final String serviceName;
  final String serviceDescription;
  final String serviceLogo;

  ServiceModel({required this.serviceName, required this.serviceDescription, required this.serviceLogo});

  static List<ServiceModel> services = [
    ServiceModel(
      serviceName: 'Flutter',
      serviceDescription: 'Build high-performance, cross-platform mobile, web, and desktop applications using Flutter. Leverage a single codebase with expressive UI, smooth animations, and native-like performance for a seamless user experience.',
      serviceLogo: Images.flutter,
    ),
    ServiceModel(
      serviceName: 'Android Development',
      serviceDescription: 'Create powerful, scalable, and user-friendly Android applications using modern frameworks like Jetpack, Kotlin, and Java. Optimize app performance, UI/UX, and security for a seamless Android experience.',
      serviceLogo: Images.android,
    ),
    ServiceModel(
      serviceName: 'iOS Development',
      serviceDescription: 'Develop elegant and robust iOS applications using Swift and Objective-C. Ensure high performance, seamless user experience, and App Store compliance with advanced design patterns and Apple ecosystem integration.',
      serviceLogo: Images.ios,
    ),
    ServiceModel(
      serviceName: 'Web Development',
      serviceDescription: 'Design and develop responsive, high-performance websites and web applications using modern frameworks like React, Angular, and Vue.js. Optimize for speed, scalability, and user engagement.',
      serviceLogo: Images.web,
    ),
    ServiceModel(
      serviceName: 'Debugging',
      serviceDescription: 'Identify and fix runtime errors, performance issues, and crashes in Flutter apps to ensure smooth and efficient execution.',
      serviceLogo: Images.debug,
    ),
    ServiceModel(
      serviceName: 'Deploy & Launch',
      serviceDescription: 'Prepare, build, and release Flutter apps to Play Store, App Store, or web with optimized performance and best practices.',
      serviceLogo: Images.launch,
    ),

  ];

}