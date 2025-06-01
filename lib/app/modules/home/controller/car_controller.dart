import 'dart:convert';

import 'package:car_selling/app/modules/home/model/car_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CarController extends GetxController {
  var slider = <SliderData>[].obs;
  var latestCar = <Car>[].obs;
  var errorMessage = ''.obs;
  var isLoading = false.obs;

  final baseUrl = 'https://carbaz.mamunuiux.com/api/';

  @override
  void onInit() {
    fetchCarSlider();
    fetchCar();
    super.onInit();
  }

  Future<void> fetchCarSlider() async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body) as Map<String, dynamic>;
        if (responseJson.containsKey('sliders') &&
            responseJson['sliders'] != null) {
          final slidersJson = responseJson['sliders'] as List<dynamic>;
          slider.value =
              slidersJson.map((json) => SliderData.fromJson(json)).toList();
        } else {
          errorMessage.value = 'No sliders data found';
        }
      } else {
        errorMessage.value = 'Failed to load sliders: ${response.statusCode}';
      }
    } catch (e) {
      errorMessage.value = 'Error occurred: $e';
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchCar() async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body) as Map<String, dynamic>;
        if (responseJson.containsKey('latest_cars') &&
            responseJson['latest_cars'] != null) {
          final slidersJson = responseJson['latest_cars'] as List<dynamic>;
          latestCar.value =
              slidersJson.map((json) => Car.fromJson(json)).toList();
        } else {
          errorMessage.value = 'No car data found';
        }
      } else {
        errorMessage.value = 'Failed to load cars: ${response.statusCode}';
      }
    } catch (e) {
      errorMessage.value = 'Error occurred: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
