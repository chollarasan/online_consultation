import 'package:date_picker_timeline/date_picker_widget.dart';

import 'controller/detail_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/widgets/app_bar/appbar_image.dart';
import 'package:readmore/readmore.dart';

class DetailDoctorScreen extends GetWidget<DetailDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA40,
            body: Container(
                width: double.maxFinite,
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: getVerticalSize(174),
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blueA40),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: getSize(10),
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("lbl_detail_doctor".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold20WhiteA700)
                                            ],
                                          ),
                                          AppbarImage(
                                              height: getSize(32),
                                              width: getSize(32),
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              margin: getMargin(left: 15),
                                              onTap: () {
                                                controller.onTapArrowLeft();
                                              }),
                                        ],
                                      ),
                                    ],
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(getSize(20)),
                                        topLeft: Radius.circular(getSize(20)))),
                                height: getSize(40),
                              )
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDr5,
                                    height: getSize(78),
                                    width: getSize(78),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(39)),
                                    alignment: Alignment.bottomCenter),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(color: Colors.white),
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text("msg_dr_kabuto_yakushi".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium22),
                                ),
                                Center(
                                  child: Text("msg_heart_specialist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16),
                                ),
                                Container(
                                    margin:
                                        getMargin(left: 1, top: 22, right: 1),
                                    padding: getPadding(
                                        left: 24,
                                        top: 19,
                                        right: 24,
                                        bottom: 19),
                                    decoration: AppDecoration
                                        .txtOutlineBlueA4004c
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder14),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_patients".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium16),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text("lbl_1056".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium18))
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 17),
                                          child: SizedBox(
                                              height: getVerticalSize(54),
                                              child: VerticalDivider(
                                                  width: getHorizontalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant.indigo1,
                                                  indent: getHorizontalSize(7),
                                                  endIndent:
                                                      getHorizontalSize(7)))),
                                      Padding(
                                          padding: getPadding(left: 34, top: 2),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_experience".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium16),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "lbl_10".tr,
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorConstant
                                                                          .blue9,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          18),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          TextSpan(
                                                              text: " ",
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorConstant
                                                                          .blue9,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          18),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_yrs".tr,
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorConstant
                                                                          .blue9,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          18),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 29),
                                          child: SizedBox(
                                              height: getVerticalSize(54),
                                              child: VerticalDivider(
                                                  width: getHorizontalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant.indigo1,
                                                  indent: getHorizontalSize(7),
                                                  endIndent:
                                                      getHorizontalSize(7)))),
                                      Padding(
                                          padding: getPadding(
                                              left: 34, top: 2, bottom: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_rating".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium16),
                                                Padding(
                                                    padding: getPadding(top: 8),
                                                    child: Text("lbl_4_8".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium18))
                                              ]))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Text("lbl_about_doctor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold20)),
                                Container(
                                    width: getHorizontalSize(339),
                                    margin: getMargin(left: 1, top: 13),
                                    child: ReadMoreText(
                                        "msg_lorem_ipsum_is_simply".tr,
                                        trimLines: 3,
                                        style: AppStyle.txtRobotoRegular18Grey,
                                        colorClickableText:
                                            ColorConstant.blueA402,
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: "lbl_read_more".tr,
                                        moreStyle: TextStyle(
                                            color: ColorConstant.blueA402,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400),
                                        lessStyle: TextStyle(
                                            color: ColorConstant.blueA402,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400))),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Text("Select Schedule",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold20)),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: SizedBox(
                                      height: 100,
                                      child: DatePicker(
                                        DateTime.now(),
                                        initialSelectedDate: DateTime.now(),
                                        selectionColor: Colors.blue,
                                        selectedTextColor: Colors.white,
                                        onDateChange: (date) {
                                          // New date selected
                                          // setState(() {
                                          //   _selectedValue = date;
                                          // });
                                        },
                                      ),
                                    )),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Text("Morning",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium16Gray400)),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Container(
                                      height: 40,
                                      width: Get.width,
                                      child: ListView.builder(
                                        itemCount: controller.timeList.length,
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          var time = controller.timeList[index];
                                          return Obx(() => Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    controller
                                                        .changeIndex(index);
                                                  },
                                                  child: Container(
                                                    decoration: controller
                                                                .index.value ==
                                                            index
                                                        ? AppDecoration
                                                            .txtFillBlueA40001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10)
                                                        : AppDecoration
                                                            .fillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16.0,
                                                              right: 16.0),
                                                      child: Center(
                                                          child: Text(
                                                        time,
                                                        style: controller.index
                                                                    .value ==
                                                                index
                                                            ? AppStyle
                                                                .txtRobotoRegular18White
                                                            : AppStyle
                                                                .txtRobotoRegular18,
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ));
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ))
                    ]))));
  }
}
