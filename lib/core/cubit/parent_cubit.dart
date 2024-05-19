import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'parent_state.dart';

class ParentCubit extends Cubit<ParentState> {
  ParentCubit() : super(ParentInitial()) {
    loadlanguage();
  }
  Map<String, dynamic> local = {};
  String lang = 'ar';
  Future<void> loadlanguage() async {
    String s = await rootBundle.loadString('assets/lang/$lang.json');
    local = json.decode(s);
    emit(ParentInitial());
  }

  void changrlanguage() {
    if (lang == 'ar') {
      lang == 'en';
    } else {
      lang == 'ar';
    }
    loadlanguage();
    emit(ParentInitial());
  }
}
