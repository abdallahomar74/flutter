import 'package:flutter/material.dart';
import 'package:section_project/features/dashboard/modules/users/model/user_model.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.uModel,});
  final UModel uModel;
  @override
  Widget build(BuildContext context) {
    return  ColoredBox(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            uModel.name??'*****',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
               uModel.address??'*****',
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}