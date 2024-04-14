import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:section_project/features/onboarding/model/onboarding_model.dart';
import 'package:section_project/features/registration/view/page/registration_page.dart';
//import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  PageController pagecontroller = PageController();

  void onChangeToNext() {
    pagecontroller.nextPage(
        duration: Duration(seconds: 2), curve: Curves.bounceIn);
  }

  void onCallSkip(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const Registration_page(),
      ),
    );
  }

  List data = [
    OnboardingModel(
      images: "assets/images/7.png",
      title: 'First',
      subtitle: 'First Page',
      color: Colors.blue,
    ),
    OnboardingModel(
      images: "assets/images/7.png",
      title: 'Second',
      subtitle: 'Second Page',
      color: Colors.red,
    ),
    OnboardingModel(
      images: "assets/images/7.png",
      title: 'Third',
      subtitle: 'Third Page',
      color: Colors.orange,
    ),
  ];
}
