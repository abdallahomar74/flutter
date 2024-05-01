import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'XXX',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
               'XXX',
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