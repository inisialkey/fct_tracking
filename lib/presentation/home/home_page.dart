import 'package:fct_tracking/presentation/home/widgets/card_delivery.dart';
import 'package:fct_tracking/theme/appcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bluedeep,
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/icons/img_profile1.png',
                width: 35,
                height: 35,
              ),
            ),
            SizedBox(width: 8),
            Text(
              'Morning, Karen',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.backgroundColor,
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/icons/4379793.png',
              width: 20,
              height: 20,
              color: AppColors.backgroundColor,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: _buildAppBarContent(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent deliveries',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View all',
                    style:
                        TextStyle(color: AppColors.bluedeep.withOpacity(0.8)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: List.generate(
                  2,
                  (index) => CardDelivery(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarContent() {
    return Column(
      children: [
        Text(
          'Track your parcel',
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        SizedBox(height: 30),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 13.0, horizontal: 20),
              hintText: 'search',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.7),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: AppColors.backgroundColor,
              ),
            ),
          ),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
