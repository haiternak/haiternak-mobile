import 'dart:io';

import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/data/disease_model.dart';

class UploadController extends GetxController {
  final result = [].obs;

  final isPick = false.obs;

  final isExpan = false.obs;

  final image = File('path').obs;

  final title = ''.obs;

  List<DiseaseModel> listDisease = [];

  void changeExpan() => isExpan.value = !isExpan.value;

  @override
  void onInit() {
    loadModel();
    super.onInit();
  }

  // * this function to load model tensor

  Future loadModel() async {
    Tflite.close();
    String? res = await Tflite.loadModel(
        model: "assets/tflite/model_inception_1.tflite",
        labels: "assets/tflite/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
    print('model : $res');
  }

  // * this function to clasification image from model

  Future imageClassification() async {
    try {
      var recognitions = await Tflite.runModelOnImage(
          path: image.value.path, // required
          imageMean: 127.5, // defaults to 117.0
          imageStd: 127.5, // defaults to 1.0
          numResults: 6, // defaults to 5
          threshold: 0.05, // defaults to 0.1
          asynch: true // defaults to true
          );

      result.value = recognitions!;
      print(result);
      changeLabelToTitle();
    } catch (e) {
      throw Exception(e);
    }
  }

  // * this function to get image to show in container and remove from container

  void getImage(File filepath) {
    isPick.value = true;
    image.value = filepath;
  }

  void removeImage() {
    isPick.value = false;
    image.value = File('');
  }

  // * Function to convert label to title

  void changeLabelToTitle() {
    switch (result[0]['label']) {
      case 'cocci':
        title.value = 'Cocci';
        listDisease = DiseaseModel.listCocci;
        break;
      case 'healthy':
        title.value = 'Healthy';
        break;
      case 'ncd':
        title.value = 'NCD';
        listDisease = DiseaseModel.listNewCastle;
        break;
      case 'salmo':
        title.value = 'Salmonella';
        listDisease = DiseaseModel.listSalmonella;
        break;
      default:
    }
  }
}
