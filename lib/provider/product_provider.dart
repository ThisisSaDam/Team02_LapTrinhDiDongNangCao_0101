import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _shirt = [
    ProductModel(
      name: "Áo thun đen SKP002",
      price: 200000,
      image:
          'https://cdn2.yame.vn/pimg/ao-thun-co-tron-tay-ngan-soi-nhan-tao-co-gian-bieu-tuong-dang-vua-gia-tot-no-style-m130-0023911/e711855c-cc1d-8800-e81e-001bb67b671e.jpg?w=540&h=756&c=true&ntf=false',
      isAvailable: true,

    ),
    ProductModel(
      name: "dsf",
      price: 1220000,
      image:
          "https://www.apple.com/v/macbook-air-m1/e/images/overview/compare/compare_mbp_13__9j7gq7j09le6_large.png",
      isAvailable: false,
    ),
  ];

  final List<ProductModel> _pant = [
    ProductModel(
      name: "sdf",
      price: 850000,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/04/iPad-10th-Gen-blue.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 220000,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/04/Ipad-Pro-11-inch-SPG-m2-700x700.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _hoodie = [
    ProductModel(
      name: "sdf",
      price: 999000,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/03/iPhone-14-Pro-Max-Apple-Asia-Srilanka-Purple-1.webp",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 799000,
      image: "https://idealz.lk/wp-content/uploads/2020/10/11-Purple.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _jacket = [
    ProductModel(
      name: "sdf",
      price: 1599000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK0U3_FV404?wid=1420&hei=930&fmt=png-alpha&.v=1645143356602",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 590000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MNWM3?wid=532&hei=582&fmt=png-alpha&.v=1652736144126",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 990000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMQ3?wid=532&hei=582&fmt=png-alpha&.v=1645138486301",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 1490000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMP3?wid=532&hei=582&fmt=png-alpha&.v=1645136899926",
      isAvailable: true,
    ),
    ProductModel(
      name: "sdf",
      price: 1990000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMR3?wid=532&hei=582&fmt=png-alpha&.v=1645719947833",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _hat = [
    ProductModel(
      name: "asd",
      price: 249000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MQD83?wid=532&hei=582&fmt=png-alpha&.v=1660803972361",
      isAvailable: true,
    ),
    ProductModel(
      name: "asd",
      price: 549000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-silver-202011?wid=470&hei=556&fmt=png-alpha&.v=1604021221000",
      isAvailable: true,
    ),
    ProductModel(
      name: "asd",
      price: 99000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-mini-select-blue-202110_FV1?wid=934&hei=440&fmt=jpeg&qlt=95&.v=1633086025000",
      isAvailable: true,
    ),
    ProductModel(
      name: "asdasd",
      price: 169000,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000",
      isAvailable: true,
    ),
    ProductModel(
      name: "asd",
      price: 129000,
      image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MV7N2?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1551489688005",
      isAvailable: true,
    )
  ];

  final db = FirebaseFirestore.instance;
  List<ProductModel> get shirts => _shirt;
  List<ProductModel> get pants => _pant;
  List<ProductModel> get hoodies => _hoodie;
  List<ProductModel> get jackets => _jacket;
  List<ProductModel> get hats => _hat;
}
