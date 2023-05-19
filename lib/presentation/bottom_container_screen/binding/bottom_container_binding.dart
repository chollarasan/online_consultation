import '../controller/bottom_container_controller.dart';
import 'package:get/get.dart';

class BottomContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomContainerController());
  }
}
