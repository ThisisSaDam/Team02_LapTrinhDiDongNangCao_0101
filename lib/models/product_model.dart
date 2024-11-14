import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String image;
  final bool isAvailable;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.isAvailable,
  }) : id = Random().nextInt(100);

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'name': name,
        'price': price,
        'image': image,
        'isAvailable': isAvailable,
      };
}
