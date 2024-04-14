import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/features/registration/controller/cubit/registration_cubit.dart';
import 'package:section_project/features/registration/view/components/body_registration.dart';
import 'package:section_project/features/registration/view/components/bottomnavigationbar_registration.dart';

// ignore: camel_case_types
class Registration_page extends StatelessWidget {
  const Registration_page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationCubit>(
      create: (context) => RegistrationCubit(),
      child: BlocBuilder<RegistrationCubit,RegistrationState>(
        builder: (context, state) {
          return const Scaffold(
            body: body_registration(),
            bottomNavigationBar: bottomnavigationbar_registration(),
          );
        },
      ),
    );
  }
}
