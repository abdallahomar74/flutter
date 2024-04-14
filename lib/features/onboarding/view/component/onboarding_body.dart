import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/features/onboarding/controller/cubit/onboarding_cubit.dart';

class Onboarding_body extends StatelessWidget {
   Onboarding_body({super.key,required this.controller});
  OnboardingCubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Welcome in our App"),
        Expanded(
            child: BlocProvider<OnboardingCubit>.value(
          value: controller,
          child: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              OnboardingCubit controller = context.read<OnboardingCubit>();
              return PageView(
                controller: controller.pagecontroller,
                  children: List.generate(controller.data.length, (index) {
                return Column(
                  children: [
                    Image.asset(controller.data[index].images),
                    Text(
                      controller.data[index].title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: controller.data[index].color),
                    ),
                    Text(
                      controller.data[index].subtitle,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                );
              }));
            },
          ),
        ))
      ],
    );
  }
}
