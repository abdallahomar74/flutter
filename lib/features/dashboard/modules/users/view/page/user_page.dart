import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_project/features/dashboard/modules/users/controller/cubit/user_cubit.dart';
import 'package:section_project/features/dashboard/modules/users/view/component/user_item.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          final UserCubit controller = context.read<UserCubit>();
          return Scaffold(
            body: ListView.builder(
              itemCount: controller.users?.length??0,
              itemBuilder: (context, index) {
              return UserItem(uModel: controller.users[index],);
            },)
          );
        },
      ),
    );
  }
}
