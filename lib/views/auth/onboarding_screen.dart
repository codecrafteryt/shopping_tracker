import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/auth/signup_screen.dart';
import 'package:shopping_tracker/views/widgets/custom_button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              'Shop Smart',
              style: kSize18DarkW800Text.copyWith(
                fontSize: 40,
                color: Color.fromRGBO(20, 174, 92, 0.99),
              )
            ),
           24.sbh,
            // Subtitle
            Text(
              'Your AI Shopping Buddy',
              style: kSize14DarkW400Text.copyWith(
                fontSize: 20,
                color: Color.fromRGBO(20, 174, 92, 0.99),
              )
            ),
            35.sbh,
            Image.asset(
              'assets/images/onboarding.png',
              height: 322,
              width: 322,
            ),
           30.sbh,
            CustomButtonWidget(
              text: "Get Started",
              width: 300.w,
              height: 60.h,
              onPressed: () {
                debugPrint("hi");
                Get.to(() => const SignInScreen());
              },
            ),
            const SizedBox(height: 20),
            // Skip Text
            GestureDetector(
              onTap: () {
                // Add skip action here
              },
              child: Text(
                'Skip',
                style: kSize14DarkW400Text.copyWith(
                  fontSize: 20,
                  color: Color.fromRGBO(20, 174, 92, 0.99),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
