import 'package:my_portfolio/theme_data/light_theme.dart';
import 'package:my_portfolio/utils/app_exports.dart';
import 'package:my_portfolio/utils/app_strings.dart';
import 'package:my_portfolio/views/contact_me/provider/contact_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider()),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));

    return  ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return  MaterialApp(
          title: AppStrings.APP_NAME,
          navigatorKey: NavigationService.navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.landingPage,
          routes: AppRoutes.routes,
          theme: light
        );
      },
    );
  }
}
