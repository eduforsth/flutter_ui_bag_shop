import 'package:flutter/material.dart';
import 'package:ui_online_shop/constants.dart';
import 'package:ui_online_shop/models/product.dart';
import 'package:ui_online_shop/screens/details/detail_screen.dart';
import 'package:ui_online_shop/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  // List<Product> _products = products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: GridView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.only(left: 5, right: 5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.7),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(product: products[index]))),
                  child: ItemCard(
                      product: products[index],
                      ),
                );
              }),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  // final Function press;

  const ItemCard({
    super.key,
    required this.product,
    // required this.press,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(5),
              //  height: 180,
              //  width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: product.id!,
                child: Image.asset(
                  product.image!,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  product.title!,
                  style: const TextStyle(color: sTextColor),
                ),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
