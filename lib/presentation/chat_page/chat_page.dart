import 'package:online_consultation_changes/data/models/chatModel/chat_list_model.dart';
import '../chat_page/widgets/chat_item_widget.dart';
import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:online_consultation_changes/widgets/app_bar/appbar_image.dart';
import 'package:online_consultation_changes/widgets/app_bar/appbar_title.dart';
import 'package:online_consultation_changes/widgets/app_bar/custom_app_bar.dart';
import 'package:online_consultation_changes/widgets/custom_search_view.dart';

class ChatPage extends StatelessWidget {
  ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          title: AppbarTitle(
            text: "lbl_chat".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                29,
              ),
              width: getHorizontalSize(
                33,
              ),
              svgPath: ImageConstant.imgSignal,
              margin: getMargin(
                left: 16,
                top: 13,
                right: 16,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 10,
            right: 16,
            bottom: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 1,
                ),
                child: CustomSearchView(
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
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 1,
                    top: 24,
                    right: 1,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            10,
                          ),
                        );
                      },
                      itemCount: controller.chatList.value.length,
                      itemBuilder: (context, index) {
                        ChatListModel model = controller.chatList.value[index];
                        return ChatItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
