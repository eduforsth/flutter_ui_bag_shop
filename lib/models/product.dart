import 'package:flutter/material.dart';

class Product {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;

  Product(
      { this.id,
       this.image,
       this.title,
       this.price,
       this.description,
       this.size,
       this.color});
}

List<Product> products = [
  Product(
      id: 0,
      image: 'assets/images/hand_bag_01.png',
      title: 'Hand Bag01',
      price: 200,
      description: 'of the product and file versions while build-number is used as the build suffix. of the product and file versions while build-number is used as the build suffix.',
      size: 12,
      color: Colors.yellow.shade200),
      
  Product(
      id: 1,
      image: 'assets/images/hand_bag_02.png',
      title: 'Hand Bag02',
      price: 300,
      description: 'The following defines the version and build number for your application. The following defines the version and build number for your application',
      size: 13,
      color: Colors.green.shade200),
  Product(
      id: 2,
      image: 'assets/images/hand_bag_03.png',
      title: 'Hand Bag03',
      price: 400,
      description: 'A version number is three numbers separated by dots The following defines the version and build number for your application',
      size: 14,
      color: Colors.red.shade200),
  Product(
      id: 3,
      image: 'assets/images/hand_bag_04.png',
      title: 'Hand Bag04',
      price: 500,
      description: 'followed by an optional build number separated by The following defines the version and build number for your application',
      size: 15,
      color: Colors.blue.shade200),
  Product(
      id: 4,
      image: 'assets/images/hand_bag_05.png',
      title: 'Hand Bag05',
      price: 600,
      description: 'Both the version and the builder number may be overridden in flutter The following defines the version and build number for your application',
      size: 16,
      color: Colors.grey.shade200),
  Product(
      id: 5,
      image: 'assets/images/hand_bag_06.png',
      title: 'Hand Bag06',
      price: 700,
      description: 'In Android, build-name is used as versionName while build-number used The following defines the version and build number for your application',
      size: 17,
      color: Colors.purple.shade200),

];
