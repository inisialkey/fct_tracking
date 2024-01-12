import 'package:fct_tracking/presentation/maps/widgets/card_user.dart';
import 'package:fct_tracking/presentation/onboarding/widgets/my_button.dart';
import 'package:fct_tracking/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgets extends StatelessWidget {
  final PanelController controller;

  const PanelWidgets({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '59 0008 7868 3456',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(
                'assets/icons/6065255.png',
                width: 40,
                height: 40,
                color: AppColors.bluedeep,
              ),
            ],
          ),
          Text(
            'Nike Sportswear',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          CardUser(),
          SizedBox(height: 10),
          Text(
            'Delivery history',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 3,
                height: 50,
                color: Colors.grey.withOpacity(0.5),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 3,
                height: 50,
                color: Colors.grey.withOpacity(0.5),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          MyButton(
            title: 'Confirm pickup',
            width: 350,
            titleColor: Colors.white,
            buttonColor: AppColors.bluedeep,
          ),
        ],
      ),
    );
  }
}
