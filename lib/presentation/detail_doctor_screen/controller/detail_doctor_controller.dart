import 'package:online_consultation_changes/core/app_export.dart';

class DetailDoctorController extends GetxController {
  List<String> timeList = List<String>.empty(growable: true);
  RxInt index = 0.obs;

  @override
  void onInit() {
    timeList = [
      "09.30 AM",
      "10.00 AM",
      "10.30 AM",
      "11.00 AM",
      "11.30 AM",
      "12.00 PM",
      "12.30 PM"
    ];

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onTapArrowLeft() {
    Get.back();
  }

  changeIndex(int tabIndex) {
    index.value = tabIndex;
  }
}
