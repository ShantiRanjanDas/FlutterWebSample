import 'package:flutter/material.dart';
import 'package:flutter_web_sample/screens/animation/sample_animations.dart';
import 'package:flutter_web_sample/screens/custom_app_bar.dart';
import 'package:flutter_web_sample/screens/fetch_data/main_fetch_data.dart';
import 'package:flutter_web_sample/screens/persistant_tabbar/main_persistent_tabbar.dart';
import 'package:flutter_web_sample/screens/split_image.dart';

final Map<String, Widget> screens = {
  'Custom App Bar': CustomAppBar(),
  'Animation': SampleAnimations(),
  'Fetch Data': MainFetchData(),
  'Persistent Tab Bar': MainPersistentTabBar(),
  'SplitImage': SplitImage(),
};

class AllScreens extends StatelessWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView.builder(
      itemCount: screens.length,
      itemBuilder: (ctx, index) {
        var item = screens.entries.elementAt(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.value),
              );
            },
            child: Text(item.key),
          ),
        );
      },
    ));
  }
}
