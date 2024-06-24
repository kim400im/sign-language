import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child; // child 위젯을 선언. 여기에 들어가는 항목은 자주 바뀐다.
  final EdgeInsets padding;
  final double radius; // 넣어도 되고 안 넣어도 되는 값으로 "송금" 버튼 때문에 사용
  final Color? backgroundColor; // 넣어도 되고 안 넣어도 되는 값으로

  const RoundedContainer(
      {required this.child,
      super.key,
        this.radius = 20,
        this.backgroundColor,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15)});

  // padding은 기본값을 설정해준다.

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.black,
        // 입력된 색이 있다면 backgroundColor 사용, 들어온 값이 없다면 buttonBackground 사용
        borderRadius: BorderRadius.circular(radius), // 둥글게 해준다.
      ),
      child: child,
    );
  }
}
