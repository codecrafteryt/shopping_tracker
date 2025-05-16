import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/home/home.dart';
import 'package:shopping_tracker/views/home/home_pages.dart';
import 'package:shopping_tracker/views/widgets/custom_button_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            50.sbh,
            Text(
              'Sign In',
              style: kSize14DarkW400Text.copyWith(
                fontSize: 40.sp,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(20, 174, 92, 0.99),
              ),
            ),
            75.sbh,
            CustomButtonWidget(
              text: "Continue with Google",
              width: 300.w,
              height: 60.h,
              backgroundColor: Color.fromRGBO(179, 179, 179, 1),
              textStyle: kSize14DarkW400Text.copyWith(
                fontSize: 16.sp,
                color: Color.fromRGBO(20, 174, 92, 1),
              ),
              onPressed: () {
                debugPrint("hi");
                Get.to(() => const HomePages());
              },
            ),
            35.sbh,
            CustomButtonWidget(
              text: "Continue with Email",
              width: 300.w,
              height: 60.h,
              backgroundColor: Color.fromRGBO(179, 179, 179, 1),
              textStyle: kSize14DarkW400Text.copyWith(
                fontSize: 16.sp,
                color: Color.fromRGBO(20, 174, 92, 1),
              ),
              onPressed: () {
                debugPrint("hi");
              },
            ),
            35.sbh,
            CustomButtonWidget(
              text: "Continue with Apple",
              width: 300.w,
              height: 60.h,
              backgroundColor: Color.fromRGBO(179, 179, 179, 1),
              textStyle: kSize14DarkW400Text.copyWith(
                fontSize: 16.sp,
                color: Color.fromRGBO(20, 174, 92, 1),
              ),
              onPressed: () {
                debugPrint("hi");
              },
            ),
            35.sbh,
            Text(
              'or',
              style: kSize14DarkW400Text.copyWith(
                fontSize: 20.sp,
              ),
            ),
           30.sbh,
            GestureDetector(
              onTap: () {
                // Navigate to Create Account
              },
              child: Text(
                'Create an Account',
                style: kSize14DarkW400Text.copyWith(
                  fontSize: 20.sp,
                  color: Color.fromRGBO(0, 153, 81, 1),
                ),
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Navigate to Forgot Password
              },
              child: Text(
                'Forget Password?',
                style: kSize14DarkW400Text.copyWith(
                  fontSize: 16.sp,
                    color: Color.fromRGBO(2, 84, 45, 1),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Color(0xFF17964E)),
        ),
      ),
    );
  }
}
