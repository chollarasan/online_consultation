import '../controller/detail_doctor_controller.dart';
import 'package:get/get.dart';

class DetailDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailDoctorController());
  }
}
