import 'package:fluttertoast/fluttertoast.dart';
import 'app_exports.dart';


import 'package:url_launcher/url_launcher.dart';

void openWhatsApp() async {
  String phoneNumber = '+923203838849';
  String url = 'https://wa.me/$phoneNumber';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}


showToast(String message){
  Fluttertoast.showToast(
    webPosition: 'center',
    webBgColor: "linear-gradient(to right, #fd5c39, #fd5c39)",
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 14.0
  );
}

String getGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour >= 5 && hour < 12) {
    return "Good Morning";
  } else if (hour >= 12 && hour < 16) {
    return "Good Noon";
  } else if (hour >= 16 && hour < 19) {
    return "Good Afternoon";
  } else if (hour >= 19 && hour < 21) {
    return "Good Evening";
  } else {
    return "Good Night";
  }
}

