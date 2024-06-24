import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/mixin/w_rounded_container.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

// 버튼은 고정되고 변하지 않기 떄문에 stless로 선언한다.
class BigButton extends StatelessWidget {
  final String text;
  final void Function() onTap; // 눌렀을 때 실행을 선언한다.

  const BigButton(this.text,
      {super.key,
      required this.onTap}); // text를 넣고 Tap이 버튼에 무조건 있어야하므로 필수값으로 선언

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap, // tap으로 roundedContainer를 감싸준다. 이렇게 하면 눌렀을 떄를 실행할 수 있다.
      child: RoundedContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // spaceBetween은 서로 공간을 최대한 밀어낸다
          children: [
            text.text.white.size(20).bold.make(),
            Arrow(), // 이 프로젝트에 이미 만들어진 거다.
          ],
        ),
      ),
    );
  }
}
