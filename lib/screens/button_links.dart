import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ButtonLink extends StatelessWidget {
  final String title;
  final String url;

  const ButtonLink({
    required this.title,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: SizedBox(
            width: width > 680 ? 680 : width * 0.95,
            child: ElevatedButton(
              onPressed: () => launchUrlString(url),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    );
  }
}
