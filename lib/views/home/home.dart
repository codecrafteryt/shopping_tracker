import 'package:flutter/material.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';

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
            20.sbh,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home\nDashboard',
                  style: kSize14DarkW400Text.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(20, 174, 92, 0.99),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.search, color: Color(0xFF14AE5C)),
                ),
              ],
            ),
            // Search Bar
            22.sbh,
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.menu, color: Colors.grey),
                  hintText: 'Hinted search text',
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
                ),
                _DashboardButton(
                  imagePath: 'assets/images/budget.png',
                  label: 'Budget Tracker',
                ),
                _DashboardButton(
                  imagePath: 'assets/images/price.png',
                  label: 'Price Comparison',
                ),
                _DashboardButton(
                  imagePath: 'assets/images/cart.png',
                  label: 'Shopping',
                ),
              ],
            ),
           34.sbh,
            // Recently Viewed Section
            const Text(
              'Recently Viewed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
           25.sbh,
            // Product List
            SizedBox(
              height: 150,
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

  const _DashboardButton({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF14AE5C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
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
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 100,
                color: Colors.grey[300],
                child: const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}