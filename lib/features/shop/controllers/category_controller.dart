import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/models/category.dart';
import 'package:t_store/utils/loaders/loader.dart';
import 'package:http/http.dart' as http;

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  RxList<CategoryModel> categories = <CategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategories();
  }

  // -- Load categories
  Future<void> loadCategories() async {
    try {
      // -- Start loading
      isLoading.value = true;

      // -- Fetch categories

      // categories.assignAll(
      //   json
      //       .decode(response.body)['data']
      //       .map<CategoryModel>((json) => CategoryModel.fromJson(json))
      //       .toList(),
      // );
    } catch (e) {
      HLoader.warningSnackBar(
        title: 'Oh Snap',
        message: e.toString(),
        duration: 120,
      );
    } finally {
      // -- Stop loading
      isLoading.value = false;
    }
  }

  // -- Load products
}
