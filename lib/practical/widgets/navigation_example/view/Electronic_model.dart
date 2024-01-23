import 'package:flutter/material.dart';

import '../../../../view/utils/config/app_images.dart';

class ProductModel {
  String image;
  String title;
  int price;

  ProductModel({required this.image,required this.title,required this.price
  });

}
 List<ProductModel> product = [
   ProductModel(image: ElctronicStore.watch,title: "Smartwatch",price: 2499),
   ProductModel(image: ElctronicStore.phn,title: "Phone",price: 89999),
   ProductModel(image: ElctronicStore.earbuds,title: "Earbuds",price: 999),
   ProductModel(image: ElctronicStore.TV,title: "TV",price: 25999),
   ProductModel(image: ElctronicStore.charger,title: "Charger",price: 599),

 ];
