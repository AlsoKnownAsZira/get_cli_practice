import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "iphone 12",
      "price": 1000.toString(),
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Samsung S23",
      "price": 1200.toString(),
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Xiaomi note 12 Pro",
      "price": 400.toString(),
    }
  ].obs;
  void addProduct(String name, int price) {
    if (name.isNotEmpty && price > 0) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": price.toString(),
      });
      Get.back();
    }
  }
}
