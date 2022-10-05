import 'dart:ffi';

import 'package:flutter/foundation.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(josnData) {
    return ProductModel(
      id: josnData['id'],
      title: josnData['title'],
      price: josnData['price'],
      description: josnData['description'],
      image: josnData['image'],
      rating: RatingModel.fromJosn(josnData['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJosn(josnData) {
    return RatingModel(rate: josnData['rate'], count: josnData['count']);
  }
}
