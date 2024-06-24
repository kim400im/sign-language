import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';
import '../../../common/util/app_keyboard_util.dart';

import '../../../common/widget/w_arrow.dart';
import '../../../common/widget/w_tap.dart';
import '../../../common/widget/w_text_field_with_delete.dart';

class NewChatScreen extends StatelessWidget {
  final TextEditingController controller;

  const NewChatScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('New Chat Screen'),
      ),*/
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('제목'),
                  width20,
                  Expanded(
                      child: TextFieldWithDelete(
                    controller: controller,
                    textInputAction: TextInputAction.search,
                    // 키보드 자판이 검색 버튼으로 바뀜
                    texthint: "대화 제목을 입력하세요",
                    onEditingComplete: () {
                      debugPrint('검색 확인 버튼');
                      AppKeyboardUtil.hide(context);
                      /// 저자가 만든 함수이다. 검색 버튼을 누르면 키보드가 사라진다.
                    },
                  ).pOnly(top: 6)),

                  /// TextFieldWithDelete에 ctrl로 들어가서 수정해도 된다.
                  width20,
                ],
              ),

            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              height: 750,
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 10, // Replace with the actual number of sentences
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Sentence $index'),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
