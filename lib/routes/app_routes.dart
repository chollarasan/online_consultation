import 'package:online_consultation_changes/presentation/homepage_screen/homepage_screen.dart';
import 'package:online_consultation_changes/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:online_consultation_changes/presentation/detail_doctor_screen/detail_doctor_screen.dart';
import 'package:online_consultation_changes/presentation/detail_doctor_screen/binding/detail_doctor_binding.dart';
import 'package:get/get.dart';

import '../presentation/bottom_container_screen/binding/bottom_container_binding.dart';
import '../presentation/bottom_container_screen/bottom_container_screen.dart';
import '../presentation/chat_page/binding/chat_binding.dart';
import '../presentation/chat_page/chat_page.dart';

class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String detailDoctorScreen = '/detail_doctor_screen';

  static const String chatPage = '/chat_page';

  static const String chatContainerScreen = '/chat_container_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: detailDoctorScreen,
      page: () => DetailDoctorScreen(),
      bindings: [
        DetailDoctorBinding(),
      ],
    ),
    GetPage(
      name: chatPage,
      page: () => ChatPage(),
      bindings: [
        BottomContainerBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => BottomContainerScreen(),
      bindings: [
        BottomContainerBinding(),
        HomepageBinding(),
        ChatBinding(),
        DetailDoctorBinding(),
      ],
    ),
  ];
}
