import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_sign_button.state.freezed.dart';
/// 이걸 입력한 뒤에 dart run build_runner watch 를 터미널에 입력한다.

@freezed
class FloatingButtonState with _$FloatingButtonState {
  const factory FloatingButtonState(
      final bool isExpanded,
      final bool isSmall,
      ) = _FloatingButtonState;
}
