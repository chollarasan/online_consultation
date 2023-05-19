import 'package:flutter/material.dart';
import 'package:online_consultation_changes/data/models/userModel/user_model.dart';
import 'package:online_consultation_changes/core/app_export.dart';


class TopPickDoctorItem extends StatelessWidget {
  Doctor doctorItem;

  TopPickDoctorItem(this.doctorItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 1,
        top: 22,
        right: 1,
      ),
      padding: getPadding(
        left: 9,
        top: 12,
        right: 9,
        bottom: 12,
      ),
      decoration: AppDecoration.outlineGray1003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDr,
            height: getSize(
              63,
            ),
            width: getSize(
              63,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
            margin: getMargin(
              top: 3,
              bottom: 3,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  doctorItem.specification ?? '',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    'dr.${doctorItem.name ?? ''}',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium22,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getSize(
                          9,
                        ),
                        width: getSize(
                          9,
                        ),
                        margin: getMargin(
                          top: 2,
                          bottom: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          doctorItem.rating.toString(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
                        ),
                      ),
                      Container(
                        height: getSize(
                          3,
                        ),
                        width: getSize(
                          3,
                        ),
                        margin: getMargin(
                          left: 4,
                          top: 6,
                          bottom: 7,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray900,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          '${doctorItem.reviewCount} reviews',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
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
    );
  }
}
