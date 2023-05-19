import 'package:online_consultation_changes/presentation/detail_doctor_screen/detail_doctor_screen.dart';
import 'package:online_consultation_changes/presentation/homepage_screen/homepage_screen.dart';

import 'controller/bottom_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/presentation/chat_page/chat_page.dart';
import 'package:online_consultation_changes/widgets/custom_bottom_bar.dart';

class BottomContainerScreen extends GetWidget<BottomContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homepageScreen,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.homeScreen:
        return AppRoutes.homepageScreen;
      case BottomBarEnum.chatScreen:
        return AppRoutes.chatPage;
      case BottomBarEnum.detailScreen:
        return AppRoutes.detailDoctorScreen;
      case BottomBarEnum.homeScreen:
        return AppRoutes.homepageScreen;
      case BottomBarEnum.chatScreen:
        return AppRoutes.chatPage;
      default:
        return AppRoutes.homepageScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.detailDoctorScreen:
        return DetailDoctorScreen();
      case AppRoutes.homepageScreen:
        return HomepageScreen();
      default:
        return DefaultWidget();
    }
  }
}
