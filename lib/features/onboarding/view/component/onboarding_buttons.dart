import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/features/onboarding/controller/cubit/onboarding_cubit.dart';

class OnboardingButtonWidget extends StatelessWidget {
  OnboardingButtonWidget({super.key, required this.controller});
  OnboardingCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          OnboardingCubit controller = context.read<OnboardingCubit>();
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.onCallSkip(context);
                    },
                    child: Text("Skip")),
                TextButton(
                    onPressed: controller.onChangeToNext, child: Text("Next")),
              ],
            ),
          );
        },
      ),
    );
  }
}
