import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/cart/cart.dart';
import 'package:shopping_tracker/views/widgets/custom_button_widget.dart';

class PriceComparisonPage extends StatelessWidget {
  const PriceComparisonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 179, 179, 1),
      body: Container(
        color: Color.fromRGBO(179, 179, 179, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            70.sbh,
           Padding(
             padding: EdgeInsets.all(8.0.w),
             child: Text(
                  'Compare Prices',
                  style: kSize14DarkW400Text.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(20, 174, 92, 1),
                  ),
                ),
           ),
            21.sbh,
            Container( // Product Image and Name
              width: double.infinity,
              color: Color.fromRGBO(179, 179, 179, 1),
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Pro.png',
                    width: 150,
                    height: 150,
                  ),
                 20.sbh,
                  Text(
                    'Apple Air Bud Pro',
                    style: kSize14DarkW400Text.copyWith(
                      fontSize: 38,
                      fontWeight: FontWeight.w400,),
                  ),
                ],
              ),
            ),
            60.sbh,
            const Divider(height: 1, thickness: 1, color: Colors.white),

            // Price comparison list
            _buildPriceRow('Amazon', '\$46'),
            _buildDivider(),
            _buildPriceRow('E bay', '\$40'),
            _buildDivider(),
            _buildPriceRow('Pay tm', '\$47'),
            30.sbh,
            // Bottom buttons
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButtonWidget(
                      text:  'Add to cart',
                      width: 300.w,
                      height: 55.h,
                      backgroundColor: Color.fromRGBO(20, 174, 92, 1),
                      textStyle: kSize14DarkW400Text.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                      ),
                      onPressed: () {
                        debugPrint("hi");
                        Get.to(() => const Cart());
                      },
                    ),
                  ),
                 15.sbw,
                  Expanded(
                    child: CustomButtonWidget(
                      text:  'Save later',
                      width: 300.w,
                      height: 55.h,
                      backgroundColor: Color.fromRGBO(20, 174, 92, 1),
                      textStyle: kSize14DarkW400Text.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                      ),
                      onPressed: () {
                        debugPrint("hi");
                        Get.to(() => const PriceComparisonPage());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(String vendor, String price) {
    return Container(
      color: Color.fromRGBO(179, 179, 179, 1),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vendor,
            style: kSize16DarkW600Text.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(0, 153, 81, 0.88),
            )
          ),
          Text(
            price,
              style: kSize16DarkW600Text.copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              )
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Colors.white,
    );
  }
}