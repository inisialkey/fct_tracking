import 'package:fct_tracking/theme/appcolors.dart';
import 'package:flutter/material.dart';

class CardUser extends StatelessWidget {
  const CardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.bluedeep.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/icons/img_profile1.png',
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text('Steven'),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/118669.png',
                    width: 15,
                    height: 15,
                    color: AppColors.bluedeep,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '48',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.bluedeep),
            child: ClipOval(
              child: Image.asset(
                'assets/icons/phone_icon_136322.png',
                width: 25,
                height: 25,
                color: AppColors.backgroundColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
