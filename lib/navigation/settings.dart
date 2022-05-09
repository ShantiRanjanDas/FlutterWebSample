import 'package:flutter/material.dart';
import 'package:flutter_web_sample/screens/perview_page.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 3, child: Container()),
          const PreviewPage()
        ],
      ),
    );
  }
}
