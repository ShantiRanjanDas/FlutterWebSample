import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/constants.dart';
import 'package:flutter_web_sample/screens/button_links.dart';

class LinksLandingPage extends StatelessWidget {
  const LinksLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          return Padding(
            padding: padding16,
            child: Column(
              children: [
                _addCircleAvatar(),
                for (var e in buttonData)
                  ButtonLink(
                    title: e.name,
                    url: e.url,
                  ),
                const Spacer(),
                _createFooter(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _createFooter() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Build with Flutter'),
          Image.network(
            footerUrl,
            height: 24,
          )
        ],
      );

  Widget _addCircleAvatar() => const CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.transparent,
        radius: 64,
      );
}
