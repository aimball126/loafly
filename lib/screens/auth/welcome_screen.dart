import 'package:flutter/material.dart';
import 'package:loafly/constants/colors.dart';
import 'package:loafly/widgets/custom_button.dart';

import '../../constants/images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: primary,
      body: Container(
        width: double.infinity,
        decoration:const  BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(LoafImages.welcome_bg),
            fit: BoxFit.cover,
          )
        ),
      child: Column(
        children: [
          PreferredSize(preferredSize: Size.fromHeight(30), child: _customAppbar()),
        ],
      ),
      ),
    );
  }
  Widget _customAppbar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: TextButton(
        onPressed: () {
      },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Skip", style: TextStyle(color: primary),),
        ),

      ),

    );
  }
}
