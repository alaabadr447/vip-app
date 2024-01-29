import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/consts/strings/app_strings.dart';
import '../common/enums/launch_options.dart';


class LaunchHelper {
  String? url;
  LaunchOption? launchOption;

  LaunchHelper({
    required String? url,
    this.launchOption,
  }) : url = url {}

  void check(String action) {
    switch (action) {
      case AppStrings.phone:
        makePhoneCall(url: url);
        break;
      case AppStrings.whatsapp:
        launchFunc(url: 'whatsapp://send?phone=$url');
        break;
      case AppStrings.email:
        launchFunc(url: 'mailto:$url');
        break;
      default:
        throw Exception('Invalid action: $action');
    }
  }

  Future<void> launchFunc({required String? url}) async {
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch ${url.toString()}';
    }
  }

  Future<void> makePhoneCall({required String? url}) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: url!,
    );
    if (!await launchUrl(launchUri)) {
      throw Exception('Could not launch $url');
    }
    ;
  }
}
