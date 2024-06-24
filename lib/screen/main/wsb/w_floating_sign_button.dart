import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/animated_width_collapse.dart';
import 'package:fast_app_base/screen/main/wsb/w_floating_sign_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../newchat/w_new_chat_screen.dart';
import '../s_main.dart';

class FloatingSignButton extends ConsumerWidget {
  FloatingSignButton({super.key});

  final duration = 300.ms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final floatingButtonState = ref.watch(floatingButtonStateProvider);
    final isExpanded = floatingButtonState.isExpanded;
    final isSmall = floatingButtonState.isSmall;
    final controller = TextEditingController();

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Tap(
                onTap: () {
                  //ref.read(floatingButtonStateProvider.notifier).onTapButton();
                  Nav.push(NewChatScreen(controller: controller,));
                },
                child: AnimatedContainer(
                  duration: duration,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedRotation(
                        turns: isExpanded ? 0.125 : 0,
                        duration: duration,
                        child: const Icon(Icons.add),
                      ),
                      AnimatedWidthCollapse(
                        visible: !isSmall,
                        duration: duration,
                        child: '새 대화'.text.make(),
                      )
                    ],
                  ),
                ).pOnly(
                  bottom: MainScreenState.bottomNavigationBarHeight + context.viewPaddingBottom + 10, right: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /*_floatItem(String title, String imagePath) {

  }*/
}