import 'package:flutter/services.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/presentation/homepage_screen/models/homepage_model.dart';
import 'package:online_consultation_changes/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../data/models/doctorModel/doctor_model.dart';
import '../../../data/models/userModel/user_model.dart';

class HomepageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  Rx<UserModel>? userModel = UserModel().obs;
  RxList<Doctor> topPicksDoctorList = RxList<Doctor>.empty(growable: true);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
    getUserInfo();
    getTopPickDoctors();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  getUserInfo() async {
    var userDataJson =
        await rootBundle.loadString('assets/json/user_data_json.json');
    userModel?.value = userModelFromJson(userDataJson);
  }

  getTopPickDoctors() async {
    var topPicksDoctorsDataJson =
        await rootBundle.loadString('assets/json/top_doctors_json.json');
    topPicksDoctorList.value = doctorModelFromJson(topPicksDoctorsDataJson);
  }
}
