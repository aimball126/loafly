import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:loafly/constants/colors.dart';
import 'package:loafly/constants/texts.dart';
import 'package:loafly/screens/auth/singup/using_phone.dart';

import '../../constants/images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Get.size;
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PreferredSize(preferredSize: const Size.fromHeight(40), child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: _customAppbar(),

              )),
               SizedBox(height: size.height/9,),
              _welcomeText(),
              SizedBox(height: size.height/6,),
            ],
          ),
          _signText(),
          const SizedBox(height: 10,),
          _socialButtons(),
          const SizedBox(height: 20,),
          _phoneButton(),
          const SizedBox(height: 10,),
          _haveAnAccountText(),
        ],
      ),
      ),
    );
  }
  Widget _customAppbar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: 120,
      leading: TextButton(
        onPressed: () {
      },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text("Skip", style: TextStyle(color: primary),),
        ),

      ),

    );
  }
  Widget _welcomeText(){
    Size size = Get.size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width/9),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FittedBox(

            child: Text(ConstTexts.welcomeText, style: TextStyle(
              fontSize: 60,
            ),),
          ),
          FittedBox(
            child: Text(ConstTexts.appName, style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: white,
            ),),
          ),
          FittedBox(
            child: Text(ConstTexts.slogan, style: TextStyle(
              fontSize: 20,
              color: white,
            ),),
          ),
        ],
      ),
    );
  }
  Widget _signText() {
    Size size = Get.size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size.width / 9),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max, // Allow children to take full width
          children: [
            Expanded(
              child: Divider(thickness: 2, color: Colors.white.withAlpha(700)), // Adjust thickness
            ),
            const SizedBox(width: 10,),
            const Text(ConstTexts.appUsing, style: TextStyle(color: white),),
            const SizedBox(width: 10,),
            Expanded(
              child: Divider(thickness: 2, color: Colors.white.withAlpha(700)), // Adjust thickness
            ),
          ],
        ),
      ),
    );
  }
  _socialButtons(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ElevatedButton(
          onPressed: (){},
          child: const Row(
            children: [
              Icon(FontAwesomeIcons.facebook, color:Colors.indigoAccent), // Replace with your desired icon
              SizedBox(width: 5),
              Text('FACEBOOK', style: TextStyle(color: darker),),
            ],
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          style: const ButtonStyle(

          ),
          onPressed: (){},
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.google,color: primary,), // Replace with your desired icon
              SizedBox(width: 5),
              Text('GOOGLE', style: TextStyle(color: darker),),
            ],
          ),
        ),
      ],
    );
  }
  Widget _phoneButton(){
    return TextButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white.withAlpha(300),
          side: const BorderSide(color: Colors.white),
        ),
        onPressed: (){
          Get.to(const PhoneRegister());
        }, child:const  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
                "أو أنشء حسابك باستخدام رقم الهاتف",
                style: TextStyle(
          color: Colors.white,
          fontSize: 18,
                ),
              ),
        ),
    );
  }
  Widget _haveAnAccountText(){
    return RichText(
      textDirection: TextDirection.rtl,
      text: const TextSpan(
        text: 'لديك حساب؟',
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: 'سجل دخولك الأن!',
            style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
            //recognizer: TapGestureRecognizer()..onTap = () {}, // Add your sign up action
          ),
        ],
      ),
    );
  }
}
