import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/utils/user_pref_utils.dart';
import 'package:my_portfolio/utils/validation_utils.dart';

class ContactProvider extends ChangeNotifier{

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  bool isSendingMessage = false;



  Future<void> sendEmail() async {
    if (!validateField(firstNameController.text.trim())) {
      showToast('Please enter your first name');
      return;
    } else if (!validateField(lastNameController.text.trim())) {
      showToast('Please enter your last name');
      return;
    } else if (!validateField(emailController.text.trim())) {
      showToast('Please enter your email');
      return;
    } else if (!validateField(messageController.text.trim())) {
      showToast('Please enter a message');
      return;
    }

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'ahmadasghar.appdev@gmail.com',
      queryParameters: {
        'subject': 'New Message from ${firstNameController.text.trim()} ${lastNameController.text.trim()}',
        'body': '''
      ${messageController.text.trim()}
      '''
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      showToast('Opening your email app...');
    } else {
      showToast('Could not open email app. Please try again.');
    }
  }



  clearFields(){
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    messageController.clear();
  }

}