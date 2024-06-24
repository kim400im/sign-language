import 'package:fast_app_base/data/memory/vo/sign_data_record.dart';
import 'package:fast_app_base/data/memory/vo/vo_sign.dart';
import 'package:fast_app_base/screen/main/newchat/w_new_chat_screen.dart';
import 'package:flutter/material.dart';

class SignDataHolder extends InheritedWidget {
  final SignDataRecord record;

  const SignDataHolder({
    super.key,
    required super.child,
    required this.record,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static SignDataHolder _of(BuildContext context){
    /// dependOnInheritedWidgetOfExactType를 사용하면 같은 위젯 어디에서든지 TodoDataHolder를 찾아서 곧바로 돌려준다.
    SignDataHolder inherited = (context.dependOnInheritedWidgetOfExactType<SignDataHolder>())!;
    return inherited;
  }

  void addTodo(BuildContext context) async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) => NewChatScreen(controller: controller),
    );

    if (result != null && result.isNotEmpty) {
      final newTodo = Sign(
        id: DateTime.now().millisecondsSinceEpoch,
        title: result, date: DateTime.now(),
        //dueDate: DateTime.now(), // Add the correct due date logic here
      );
      // notifier.addTodo를 호출하여 Todo 추가
      debugPrint(newTodo.title);
      //debugPrint(newTodo.dueDate.toString());
    }
  }
}
