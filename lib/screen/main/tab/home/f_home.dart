import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/home/w_sign_app_bar.dart';
import 'package:fast_app_base/screen/main/wsb/w_floating_sign_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widget/mixin/w_rounded_container.dart';
import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';
import '../../s_main.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener((){
      final floatingState = ref.read(floatingButtonStateProvider);

      //if(scrollController.position.pixels > 100 && !floatingState.isSmall)
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              top: SignAppBar.appBarHeight,
              bottom: MainScreenState.bottomNavigationBarHeight, // s_main.dart에 변수를 선언했음
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  height10,
                  RoundedContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "2024년 6월 16일 / 4월 회의록 / ***** ".text.bold.white.make(),
                      ],
                    ),
                  ),
                  height10,
                  RoundedContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "2024년 6월 16일 / 4월 회의록 / ***** ".text.bold.white.make(),
                      ],
                    ),
                  ),
                  height10,
                  RoundedContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "2024년 6월 16일 / 4월 회의록 / ***** ".text.bold.white.make(),
                      ],
                    ),
                  ),
                  height10,
                  RoundedContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "2024년 6월 16일 / 4월 회의록 / ***** ".text.bold.white.make(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SignAppBar(),
        ],
      ),
    );
  }
}
