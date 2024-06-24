import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../common/widget/w_empty_expanded.dart';
import '../../../../common/widget/w_height_and_width.dart';

class SignAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const SignAppBar({super.key});

  @override
  State<SignAppBar> createState() => _SignAppBarState();
}

class _SignAppBarState extends State<SignAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SignAppBar.appBarHeight,
      color: Colors.black,
      child: Row(
        // 가로로 배열할 거니까 ROW
        children: [
          width10,
          Text(
            '수화 서비스',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          emptyExpanded,
          Image.asset(
            "$basePath/icon/notification.png",
            height: 30,
          ),
          width10,
          // image 인식 안되면 터미널에서 flutter clean, flutter pub get 한번 해보자
        ],
      ),
    );
  }
}
