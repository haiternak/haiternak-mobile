import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/register/component/input.dart';
import 'package:haiternak_mobile/app/modules/register/controllers/register_controller.dart';
import 'package:haiternak_mobile/themes/theme.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../../constants/constants.dart';

class RegisterView2 extends GetView<RegisterController> {
  const RegisterView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          SafeArea(
            child: Form(
              key: controller.registerFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 56, left: 24.0, right: 24.0, bottom: 32),
                  child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              color: ArgonColors.white,
                              border: Border(
                                bottom: BorderSide(
                                    width: 0.5, color: ArgonColors.muted),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text("Sign up with",
                                      style: TextStyle(
                                          color: ArgonColors.text,
                                          fontSize: 16.0)),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        // width: 0,
                                        height: 36,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ArgonColors.white,
                                              foregroundColor: kPrimaryColor),
                                          onPressed: () {},
                                          // shape: RoundedRectangleBorder(
                                          //     borderRadius:
                                          //         BorderRadius.circular(4)),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 10,
                                                top: 10,
                                                left: 14,
                                                right: 14),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.facebook, size: 13),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "FACEBOOK",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // width: 0,
                                        height: 36,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ArgonColors.white,
                                              foregroundColor: kPrimaryColor),
                                          onPressed: () {},
                                          // shape: RoundedRectangleBorder(
                                          //     borderRadius:
                                          //         BorderRadius.circular(4)),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 10,
                                                top: 10,
                                                left: 8,
                                                right: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.mail, size: 13),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "GMAIL",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Divider()
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(14),
                              height: MediaQuery.of(context).size.height * 0.63,
                              color: Color.fromRGBO(244, 245, 247, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Center(
                                        child: Text(
                                          "atau daftar dengan email",
                                          style: TextStyle(
                                              color: ArgonColors.text,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Input(
                                            placeholder: "Name",
                                            prefixIcon: Icon(Icons.school),
                                            controller: controller
                                                .namaLengkapController,
                                            onSaved: (value) {
                                              controller.namaLengkap = value;
                                            },
                                            validator: (value) {
                                              return controller
                                                  .validatenamaLengkap(value);
                                            },
                                          ),
                                          SizedBox(height: 10),
                                          Input(
                                            placeholder: "Email",
                                            prefixIcon: Icon(Icons.email),
                                            onSaved: (value) {
                                              controller.email = value;
                                            },
                                            validator: (value) {
                                              return controller
                                                  .validatePassword(value);
                                            },
                                          ),
                                          SizedBox(height: 10),
                                          Input(
                                            placeholder: "Password",
                                            prefixIcon: Icon(Icons.lock),
                                            onSaved: (value) {
                                              controller.password = value;
                                            },
                                            validator: (value) {
                                              return controller
                                                  .validatePassword(value);
                                            },
                                          ),
                                        ],
                                      ),
                                      Center(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: ArgonColors.white,
                                            // shape: RoundedRectangleBorder(
                                            //   borderRadius:
                                            //       BorderRadius.circular(4.0),
                                            // ),
                                            foregroundColor: kPrimaryColor,
                                          ),
                                          onPressed: () async {
                                            // Respond to button press
                                            await controller.checkRegister();

                                            if (controller.isError == true) {
                                              QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.error,
                                                text: controller.notif,
                                              );
                                            }
                                          },
                                          // shape: RoundedRectangleBorder(
                                          //   borderRadius:
                                          //       BorderRadius.circular(4.0),
                                          // ),
                                          child: Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.only(
                                                left: 16.0,
                                                right: 16.0,
                                                top: 12,
                                                bottom: 12),
                                            child: Text(
                                              "REGISTER",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 0, bottom: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Sudah Memiliki Akun?,",
                                                style: TextStyle(
                                                    color: ArgonColors.muted,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                            GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    "Sign In",
                                                    style: TextStyle(
                                                        color: kPrimaryColor),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      )),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
