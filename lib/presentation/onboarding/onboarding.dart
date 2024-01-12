import 'package:fct_tracking/presentation/onboarding/widgets/my_button.dart';
import 'package:fct_tracking/theme/appcolors.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'assets/images/Tangkapan_Layar_2024-01-12_pukul_10.23.07-removebg-preview.png',
                  height: 300,
                  width: 400,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'All your parcels, available in one place',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50),
              MyButton(
                title: 'Get started',
                width: 350,
                titleColor: Colors.white,
                buttonColor: AppColors.bluedeep,
              ),
              SizedBox(height: 20),
              MyButton(
                title: 'Sign Up with email',
                width: 350,
                titleColor: AppColors.bluedeep,
                buttonColor: AppColors.bluedeep.withOpacity(0.2),
              ),
              SizedBox(height: 20),
              Text(
                'By signing up, you agree to our',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Text(
                'Term & Privacy policy',
                style: TextStyle(color: AppColors.bluedeep, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
