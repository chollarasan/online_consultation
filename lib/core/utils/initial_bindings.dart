import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    // Connectivity connectivity = Connectivity();
    // Get.put(NetworkInfo(connectivity));
  }
}
