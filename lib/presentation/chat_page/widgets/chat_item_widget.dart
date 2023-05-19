import 'package:online_consultation_changes/data/models/chatModel/chat_list_model.dart';

import '../controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(this.chatDataModel);

  ChatListModel chatDataModel;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 9,
        top: 15,
        right: 9,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineGray1003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          Container(
            height: getSize(
              63,
            ),
            width: getSize(
              63,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDr2,
                  height: getSize(
                    63,
                  ),
                  width: getSize(
                    63,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      31,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(
                      10,
                    ),
                    width: getSize(
                      10,
                    ),
                    margin: getMargin(
                      right: 6,
                      bottom: 2,
                    ),
                    decoration: BoxDecoration(
                      color: (chatDataModel.reciever != null &&
                              chatDataModel.reciever!.available!)
                          ? ColorConstant.green
                          : Colors.red,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.white,
                        width: getHorizontalSize(
                          1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 6,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'dr.${chatDataModel.reciever?.name ?? ''}',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium18Gray900,
                      ),
                      Text(
                        chatDataModel.chat?.lastMsgTime ?? '',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: SizedBox(
                    width: Get.width * 0.65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          chatDataModel.chat?.lastMsg ?? '',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium16Gray400,
                        ),
                        if (chatDataModel.chat!.unreadCount! > 0) ...[
                          Container(
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            child: Center(
                              child: Text(
                                chatDataModel.chat?.unreadCount.toString() ??
                                    '',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular14,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.blue40,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.white,
                                width: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          )
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
