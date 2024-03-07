import 'package:flutter/material.dart';
import 'package:ui_online_shop/models/product.dart';
import 'package:ui_online_shop/screens/custom_textstyle.dart';

// ignore: must_be_immutable
class DetailHeader extends StatelessWidget {
  Product product;
  DetailHeader({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextStyle(text: 'Arastoratic Hand Bag', color: Colors.white),
          CustomTextStyle(
            text: product.title!,
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          Row(
            children: [
              Column(
                children: [
                  CustomTextStyle(
                    text: 'Price',
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomTextStyle(
                    text: '\$${product.price.toString()}',
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const Expanded(
                  child: SizedBox(
                width: 100,
              )),
              Hero(
                tag: product.id!,
                child: Image.asset(
                  product.image!,
                  height: size.height * .27,
                  // color: product.color!.withOpacity(0.8),
                  //  colorBlendMode: BlendMode.srcATop,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
