import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:store_app/helper/api.dart';

class AllCategoreisService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
