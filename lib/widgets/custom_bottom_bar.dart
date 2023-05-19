import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHomeGray,
        type: BottomBarEnum.homeScreen),
    BottomMenuModel(
        icon: ImageConstant.imgListGray, type: BottomBarEnum.chatScreen),
    BottomMenuModel(
        icon: ImageConstant.imgAddBlue, type: BottomBarEnum.detailScreen),
    BottomMenuModel(
        icon: ImageConstant.imgChatBlue,
        type: BottomBarEnum.chatScreen),
    BottomMenuModel(
        icon: ImageConstant.imgSettingGray, type: BottomBarEnum.homeScreen)
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              12,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              12,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[0].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.gray400,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[0].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.blueA40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[1].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.gray400,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[1].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.blueA40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[2].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[2].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[3].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.gray400,
              ),
              activeIcon: CustomImageView(
                  svgPath: bottomMenuList[3].icon,
                  height: getSize(
                    48,
                  ),
                  width: getSize(
                    48,
                  ),
                  color: ColorConstant.blueA40),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[4].icon,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                color: ColorConstant.gray400,
              ),
              activeIcon: CustomImageView(
                  svgPath: bottomMenuList[4].icon,
                  height: getSize(
                    48,
                  ),
                  width: getSize(
                    48,
                  ),
                  color: ColorConstant.blueA40),
              label: '',
            )
          ],
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum { homeScreen, chatScreen, detailScreen }

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
