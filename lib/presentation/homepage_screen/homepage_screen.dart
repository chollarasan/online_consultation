import 'package:online_consultation_changes/presentation/homepage_screen/widgets/top_pick_item.dart';
import '../../data/models/userModel/user_model.dart';
import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/widgets/app_bar/custom_app_bar.dart';
import 'package:online_consultation_changes/widgets/custom_icon_button.dart';
import 'package:online_consultation_changes/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(
          57,
        ),
        title: Padding(
          padding: getPadding(
            left: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    right: 47,
                  ),
                  child: Text(
                    controller.userModel?.value.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold24,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "msg_how_do_you_feel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          CustomImageView(
            imagePath: ImageConstant.imgDr3,
            height: getSize(
              48,
            ),
            width: getSize(
              48,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                24,
              ),
            ),
            margin: getMargin(
              left: 16,
              right: 16,
              bottom: 9,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          padding: getPadding(
            top: 18,
          ),
          child: Padding(
            padding: getPadding(
              left: 16,
              right: 16,
              bottom: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomSearchView(
                  focusNode: FocusNode(),
                  controller: controller.searchController,
                  hintText: "lbl_search_here".tr,
                  prefix: Container(
                    margin: getMargin(
                      left: 10,
                      top: 19,
                      right: 10,
                      bottom: 19,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      54,
                    ),
                  ),
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        15,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        controller.searchController.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 21,
                    right: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "lbl_hospital".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 30,
                          bottom: 1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgLaptopmedical1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "lbl_consultant".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 29,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCalendar31,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_recipe".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 23,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgHospitaluser1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_appointment".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 37,
                    right: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_appointment_today".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold20,
                      ),
                      InkWell(
                        onTap: () {
                          // Get.toNamed(AppRoutes.detailDoctorScreen);
                        },
                        child: Padding(
                          padding: getPadding(
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold16BlueA400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getSize(10),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.detailDoctorScreen);
                  },
                  child: Container(
                    height: getVerticalSize(
                      171,
                    ),
                    width: getHorizontalSize(
                      357,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blueA40,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          18,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 17,
                          top: 18,
                          right: 17,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgDr4,
                                  height: getSize(
                                    58,
                                  ),
                                  width: getSize(
                                    58,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      29,
                                    ),
                                  ),
                                ),
                                CustomIconButton(
                                  height: 58,
                                  width: 58,
                                  variant: IconButtonVariant.FillBlue400,
                                  shape: IconButtonShape.CircleBorder29,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgUser,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_dr_ino_yamanaka".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_dental_specialist".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      bottom: 3,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_10_30_am".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium20,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_01_10_2022".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 25,
                    right: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_top_doctor_s_for".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          bottom: 4,
                        ),
                        child: Text(
                          "lbl_see_all".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16BlueA400,
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(() => ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.topPicksDoctorList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        Doctor doctorDetails =
                            controller.topPicksDoctorList[index];
                        return TopPickDoctorItem(doctorDetails);
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
