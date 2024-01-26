import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:loafly/constants/colors.dart';
import 'package:loafly/constants/images.dart';

class PhoneRegister extends StatefulWidget {
  const PhoneRegister({super.key});

  @override
  State<PhoneRegister> createState() => _PhoneRegisterState();
}

class _PhoneRegisterState extends State<PhoneRegister> {
  @override
  Widget build(BuildContext context) {
    Size size = Get.size;
    return  Scaffold(

      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(LoafImages.phoneReg_screen),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PreferredSize(
                      preferredSize: const Size.fromHeight(40),
                      child: _CustomGoBack()),
                  SizedBox(height:size.height/5),
                  _RegisterText(),
                  SizedBox(height: size.height/10,),
                  _phoneTextField(),
                  SizedBox(height: size.height/20,),
                  _RegisterButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _CustomGoBack(){
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        onPressed: (){
          Get.back();
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
        )
      ),
    );
  }
  Widget _RegisterText(){
    Size size = Get.size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size.width/15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("إنشاء حساب جديد", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          ),
          Text("الرجاء إدخال رقم الهاتف لكي يتم إنشاء حسابك الخاص",
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey
          ),
          textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
  Widget _phoneTextField(){
    Size size = Get.size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size.width/20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: TextField(

          maxLines: 1,

          decoration: InputDecoration(

            enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: primary), // Color for enabled state
            ),
            focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: primary), // Color for focused state
            ),
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: "(218) 9x-xxxxxxx",
            prefixIcon: Image.asset(LoafImages.libyanFlag),
          ),
          keyboardType: TextInputType.phone, // Set keyboard type for numbers
          maxLength: 9,
        ),
      ),
    );
  }
  Widget _RegisterButton(){
    return Center(
      child: TextButton(onPressed: (){},
        style: OutlinedButton.styleFrom(
          backgroundColor: primary,
          side: const BorderSide(color: Colors.white),

        ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("تأكيد رقم الهاتف", style: TextStyle(
              fontSize: 17,
              color: white

            ),),
          ),

      ),
    );
  }
}
