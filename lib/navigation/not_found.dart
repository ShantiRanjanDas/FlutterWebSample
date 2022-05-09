import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/constants.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network(notFound));
  }
}
