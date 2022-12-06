import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_alertDialog.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusableTextFields.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../../../../../reusable_widgets/reuseable_dropdown.dart';
import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../controller/change_profile_info_controller.dart';

class ChangeProfileInfoScreen extends StatelessWidget {
  const ChangeProfileInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBarCancel(titleText: "Change Info"),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
        body: GetBuilder<ChangeProfileInfoController>(
            init: ChangeProfileInfoController(),
            builder: (changeProfileInfoController) {
              return SafeArea(
                child: Container(
                  height: mediaSize.height * 1,
                  width: mediaSize.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Form(
                          key: changeProfileInfoController.changeProfileFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: cGreyColor,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            Assets.user.userAccountImage))),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TCustomTextField(
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "Name can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  iconAssetName: Assets.formImages.userNameIcon,
                                  textEditingController:
                                      changeProfileInfoController
                                          .changeProfileNameController,
                                  hintText: "Name",
                                  labelText: "Name"),
                              const SizedBox(
                                height: 10,
                              ),
                              TCustomTextField(
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "Email can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  iconAssetName: Assets.formImages.emailIcon,
                                  textEditingController:
                                      changeProfileInfoController
                                          .changeProfileMailController,
                                  hintText: "Email",
                                  labelText: "Email"),
                              const SizedBox(
                                height: 10,
                              ),
                              DCustomDropDownWithIcon(
                                  prefixIconString:
                                      Assets.formImages.countryIcon,
                                  hintString: "Country"),
                              const SizedBox(
                                height: 10,
                              ),
                              DCustomDropDownWithIcon(
                                  prefixIconString:
                                      Assets.account.fosterParentIcon,
                                  hintString: "Foster Parent"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Spacer(),
                              ReusableButton(
                                  onPressFunction: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                              onPressFunction: () {
                                                Get.back();
                                                Get.back();
                                              },
                                              buttonText: "Okay",
                                              contentText:
                                                  "Changes to your account have been\nsuccessfully saved",
                                              headerText: "Account Updated");
                                        });
                                  },
                                  stringText: "Update Profile"),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
