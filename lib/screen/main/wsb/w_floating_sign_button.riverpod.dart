

import 'package:fast_app_base/screen/main/wsb/w_floating_sign_button.state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final floatingButtonStateProvider = StateNotifierProvider<FloatingButtonStateNotifier, FloatingButtonState>(
    (ref) => FloatingButtonStateNotifier(
      const FloatingButtonState(false, false),
    ),
);

/// StateNotifierProvider는 두 개의 객체를 받는다.
/// 상태관리 객체와 상태 객체를 받는다.
///

class FloatingButtonStateNotifier extends StateNotifier<FloatingButtonState>{
  FloatingButtonStateNotifier(super.state);

  bool needToMakeButtonBigger = false;

  void onTapButton(){
    final isExpanded = state.isExpanded;
    final isSmall = state.isSmall;

    state = state.copyWith(
      isExpanded: !state.isExpanded, isSmall: needToMakeButtonBigger ? false : true
    );

    if (needToMakeButtonBigger) {
      needToMakeButtonBigger = false;
    }

    if (!isSmall && !isExpanded){
      needToMakeButtonBigger = true;
    }
  }

  void changeButtonSize(bool isSmall){
    if(state.isExpanded){
      return;
    }

    state = state.copyWith(isSmall: isSmall);
  }

}
