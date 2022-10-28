import 'package:flutter/material.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
        backgroundColor: MyTheme.t1navbar1,
        elevation: 0,
      ),
    );
  }
}
