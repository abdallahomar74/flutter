import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/features/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:section_project/features/onboarding/view/component/onboarding_body.dart';
import 'package:section_project/features/onboarding/view/component/onboarding_buttons.dart';

class Onboarding_page extends StatelessWidget {
  const Onboarding_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:BlocProvider<OnboardingCubit>(
          create: (context) => OnboardingCubit(),
          child: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              OnboardingCubit controller = context.read<OnboardingCubit>();
            return  Scaffold(
              body: Onboarding_body(controller: controller,),
              bottomNavigationBar: OnboardingButtonWidget(controller: controller,),
            );
          },
        ),
      ),
    );
  }
}
