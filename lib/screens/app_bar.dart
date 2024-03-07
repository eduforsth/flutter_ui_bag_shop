import 'package:flutter/material.dart';
import 'package:ui_online_shop/constants.dart';

AppBar myAppBar({Color? color}) {
  return AppBar(
    backgroundColor: color,
    leading: const Icon(Icons.arrow_back),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: sTextColor,
          )),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: sTextColor,
          )),
      const SizedBox(
        width: sDefaultPadding / 2,
      )
    ],
  );
}
