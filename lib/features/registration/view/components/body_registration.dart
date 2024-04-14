//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/core/custom_textfield.dart';
import 'package:section_project/features/registration/controller/cubit/registration_cubit.dart';

// ignore: camel_case_types
class body_registration extends StatelessWidget {
  const body_registration({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: RegistrationCubit(),
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          final RegistrationCubit controller = context.read<RegistrationCubit>();
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  custom_textfield(
                    labelText: 'first name',
                    hintText: 'Enter your firstname',
                    icon: const Icon(Icons.perm_identity),
                    controller: controller.fname, 
                    format:  [
                      FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z]'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textfield(
                    labelText: 'last name',
                    hintText: 'Enter your lastname',
                    icon: const Icon(Icons.perm_identity),
                    controller: controller.lname, 
                    format: [
                      FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z]'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textfield(
                    labelText: 'email',
                    hintText: 'Enter your email',
                    icon: const Icon(Icons.mail), 
                    controller: controller.email, 
                    format: const[],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textfield(
                    labelText: 'password',
                    hintText: 'Enter your password',
                    obscuer: true,
                    icon: const Icon(Icons.lock), 
                    controller: controller.password,
                    format: const[]
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed:(){ 
                      controller.validationconfirm(context);}
                    ,
                    color: Colors.greenAccent,
                    minWidth: 130,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'creat account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
