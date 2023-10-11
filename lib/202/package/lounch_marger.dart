import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
