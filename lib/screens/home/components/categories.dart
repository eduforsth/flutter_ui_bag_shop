//categories
import 'package:flutter/material.dart';
import 'package:ui_online_shop/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategory(index);
            }));
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedIndex = index;
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
          Text(
            categories[index],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? sTextColor : sTextLightColor),
          ),
          Container(
            margin: const EdgeInsets.only(top: sDefaultPadding / 4),
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.black : Colors.transparent,
          )
        ]),
      ),
    );
  }
}
