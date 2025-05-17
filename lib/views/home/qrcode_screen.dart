import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/product/product_screen.dart';
import 'package:shopping_tracker/views/widgets/custom_button_widget.dart';

class QRScanScreen extends StatelessWidget {
  const QRScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              'Scan your QR Code',
              style: kSize14DarkW400Text.copyWith(
                fontSize: 34.sp,
                color: Colors.white,
              ),
            ),
           43.sbh,
            Stack(
              alignment: Alignment.center,
              children: [
                Container( // Image from assets
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/qr.jpg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
           63.sbh,
            CustomButtonWidget(
              text:  'Scan your Product',
              width: 300.w,
              height: 60.h,
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
          ],
        ),
      ),
    );
  }

  Widget _buildCorner() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white, width: 2),
          left: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}