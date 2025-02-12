import 'package:fluttertoast/fluttertoast.dart';
import 'app_exports.dart';

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
  } else if (hour >= 12 && hour < 15) {
    return "Good Noon";
  } else if (hour >= 15 && hour < 18) {
    return "Good Afternoon";
  } else if (hour >= 18 && hour < 21) {
    return "Good Evening";
  } else {
    return "Good Night";
  }
}

