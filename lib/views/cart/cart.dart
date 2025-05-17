import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_tracker/utils/extensions/extentions.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/utils/values/style.dart';
import 'package:shopping_tracker/views/widgets/custom_button_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartScreenState();
}

class _CartScreenState extends State<Cart> {
  bool isPriceTrackingEnabled = true;
  double? selectedSize; // <-- Single value to track the selected size


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.sbh,
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Text(
                  'Cart',
                  style: kSize14DarkW400Text.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(20, 174, 92, 1),
                  ),
                ),
              ),
              Row(  // Product information
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 117.w,
                          height: 117.h,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            'assets/images/shoes.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        // Product tags
                        20.sbh,
                        Row(
                          children: [
                            _buildTag('Sustainable Model \$80 '),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Product name
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Quest 4 Men Road Running shoes',
                              style: kSize14DarkW400Text
                            ),
                          ],
                        ),
                       4.sbh,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Choose Size',
                              style: kSize13DarkW300Text.copyWith(
                                fontWeight: FontWeight.w700,
                              )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              35.sbh,
              SizedBox(
                height: 120,
                child: Column(
                  children: [
                    _buildSizeRow([8.0, 8.5, 9.0, 9.5, 10.0]),
                    const SizedBox(height: 10),
                    _buildSizeRow([10.5, 11.0, 11.5, 12, 12.5]),
                    const SizedBox(height: 10),
                    _buildSizeRow([20.5, 21.0, 22.5, 24.0, 132.5]),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // Color selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildColorOption(Colors.black, isSelected: false),
                  _buildColorOption(Colors.blue,),
                  _buildColorOption(Colors.grey[300]!,),
                  _buildColorOption(Colors.red,),
                ],
              ),
              15.sbh,
              Container(
                color: Color.fromRGBO(217, 217, 217, 1),
                child: Text(
                  textAlign: TextAlign.justify,
                  'The Nike Quest 6 is a high-performance running shoe with a supportive midfoot fit band and a supersoft midsole foam for stability and cushioning.',
                  style: kSize14DarkW400Text.copyWith(
                    fontSize: 13.sp,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Price tracking toggle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price Tracking',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Switch(
                    value: isPriceTrackingEnabled,
                    onChanged: (value) {
                      setState(() {
                        isPriceTrackingEnabled = value;
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.purple,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey[300],
                  ),
                ],
              ),
              16.sbh,
              Center(
                child: CustomButtonWidget(
                  text:  'Check out',
                  width: 300.w,
                  height: 60.h,
                  backgroundColor: Color.fromRGBO(20, 174, 92, 1),
                  textStyle: kSize14DarkW400Text.copyWith(
                    fontSize: 16.sp,
                    color: MyColors.white,
                  ),
                  onPressed: () {
                    debugPrint("hi");
                    //Get.to(() => const PriceComparisonPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: kSize14DarkW400Text.copyWith(
          fontSize: 10.sp,
          color: Color.fromRGBO(20, 174, 92, 1),
        )
      ),
    );
  }

  Widget _buildSizeRow(List<double> sizes) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: sizes.map((size) {
        final isSelected = selectedSize == size;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedSize = size; // <-- Single value for selection
            });
          },
          child: Container(
            width: 36,
            height: 28,
            decoration: BoxDecoration(
              color: isSelected ? Colors.grey[800] : Colors.grey[300],
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Text(
              size.toString(),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }


  Widget _buildColorOption(Color color, {bool isSelected = false}) {
    return Container(
      width: 31.w,
      height: 31.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(color: Colors.red, width: 2)
            : null,
      ),
    );
  }
}