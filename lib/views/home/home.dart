import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/home/top_deal_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            60.sbh,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home\nDash board',
                  style: kSize14DarkW400Text.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(20, 174, 92, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.search,
                      color: Color.fromRGBO(73, 69, 79, 1),
                  ),
                ),
              ],
            ),
            // Search Bar
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
            22.sbh,
            // Grid Buttons
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 2.7,
              children: [
                _DashboardButton(
                    imagePath: 'assets/images/top_deals.png',
                    label: 'Top Deals',
                    onPressed: (){
                      debugPrint('Top Deals');
                      Get.to(() => const DealsScreen());
                    },
                  ),
                _DashboardButton(
                  imagePath: 'assets/images/budget.png',
                  label: 'Budget Tracker',
                  onPressed: (){},
                ),
                _DashboardButton(
                  imagePath: 'assets/images/price.png',
                  label: 'Price\nxComparison',
                  onPressed: (){},
                ),
                _DashboardButton(
                  imagePath: 'assets/images/cart.png',
                  label: 'Sustainable \n Shopping mode',
                  onPressed: (){},
                ),
              ],
            ),
           34.sbh,
            Text( // Recently Viewed Section
              'Recently Viewed',
              style: kSize15DarkW500Text.copyWith(
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(2, 84, 45, 1),
              )
            ),
           35.sbh,

            SizedBox( // Product List
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _ProductCard(
                    imageUrl: 'assets/images/head_phone.png',
                    title: 'Wireless headphone',
                    price: '\$10.5',
                  ),
                  30.sbw,
                  _ProductCard(
                    imageUrl: 'assets/images/bag.png',
                    title: 'Nike Leather Backpack',
                    price: '\$25.90',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;


  const _DashboardButton({
    required this.onPressed,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(0, 153, 81, 0.88),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 14.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          8.sbw,
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            width: 32.w,
            height: 32.h,
          ),
          8.sbw,
          Text(
            label,
            style: kSize13DarkW300Text.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const _ProductCard({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 110.h,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 100,
                color: Colors.grey[300],
                child: const Icon(Icons.error),
              ),
            ),
          ),
         5.sbh,
          Text(
            title,
            style: kSize13DarkW300Text.copyWith(
              fontWeight: FontWeight.w700,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          5.sbh,
          Text(
            price,
            style: kSize13DarkW300Text.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}