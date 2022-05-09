import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/constants.dart';
import 'package:flutter_web_sample/screens/links_landing_page.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Expanded(flex: 2, child: Column(children: [
        Text("Preview",style: Theme.of(context).textTheme.headline3),
        const Expanded(child: LinksLandingPage())
      ],)),
    );
  }
}
