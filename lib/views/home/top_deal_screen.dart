import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/home/qrcode_screen.dart';

class DealsScreen extends StatelessWidget {
  const DealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            70.sbh,
             Text(
              'Top deals',
               style: kSize14DarkW400Text.copyWith(
                 fontSize: 36,
                 fontWeight: FontWeight.w700,
                 color: const Color.fromRGBO(20, 174, 92, 1),
               ),
            ),
            22.sbh,
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 230, 240, 1),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.menu, color: Colors.grey, size: 24.r,),
                  suffixIcon: Icon(Icons.search, color: Colors.grey, size: 24.r,),
                  hintText: 'Hinted search text',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(73, 69, 79, 1)
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            30.sbh,
            // Subtitle
            Text(
              'Popular Custom for Todau',
              style: kSize16DarkW600Text,
            ),
            Expanded(  // Deals List
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint('New Bag');
                      Get.to(() => const QRScanScreen());
                    },
                    child: _buildDealItem(
                      imagePath: 'assets/images/new_bag.png',
                      name: 'Knoted Main\nCity Bag',
                      price: '\$100',
                    ),
                  ),
                  _buildDealItem(
                    imagePath: 'assets/images/shoes.png',
                    name: 'NIKE VOMERO 18\nMen Running Shoes',
                    price: '\$90',
                  ),
                  _buildDealItem(
                    imagePath: 'assets/images/apple.png',
                    name: 'Apple Air Max\nWireless Headphone',
                    price: '\$50',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDealItem({
    required String imagePath,
    required String name,
    required String price,
  }) {
    return Container(
      height: 100.h,
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 1),
      ),
      child: Row(
        children: [
          Container(
            width: 51.w,
            height: 78.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          12.sbw,
          // Name and Price
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kSize13DarkW300Text.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  price,
                  style: kSize15DarkW500Text.copyWith(
                    fontWeight: FontWeight.w700,
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}