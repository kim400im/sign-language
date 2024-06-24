

import 'package:fast_app_base/data/memory/vo/vo_sign.dart';
import 'package:flutter/cupertino.dart';

class SignDataRecord extends ValueNotifier<List<Sign>>{
  SignDataRecord(): super([]);

  void addSign(Sign sign){
    value.add(sign);
    notifyListeners();
  }

  void notify(){
    notifyListeners();
  }

}