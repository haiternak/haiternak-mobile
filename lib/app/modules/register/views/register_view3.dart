import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/register/controllers/register_controller.dart';
import 'package:haiternak_mobile/themes/theme.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class RegisterView3 extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MaterialColors.bgColorScreen,
        extendBodyBehindAppBar: true,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              haiTernakColors.primary,
              haiTernakColors.primaryTextColor
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: SafeArea(
              child: Form(
                key: controller.registerFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 4.0,
                              fillColor: MaterialColors.socialFacebook,
                              child: Icon(FontAwesomeIcons.facebook,
                                  size: 24.0, color: Colors.white),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 4.0,
                              fillColor: MaterialColors.socialTwitter,
                              child: Icon(FontAwesomeIcons.twitter,
                                  size: 24.0, color: Colors.white),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 4.0,
                              fillColor: MaterialColors.socialDribbble,
                              child: Icon(FontAwesomeIcons.google,
                                  size: 24.0, color: Colors.white),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Text("or be classical",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 16)),
                      ),
                      Theme(
                        data: ThemeData(
                            primaryColor: Colors.white,
                            accentColor: Colors.white,
                            hintColor: MaterialColors.muted),
                        child: TextFormField(
                          onSaved: (value) {
                            controller.namaLengkap = value!;
                          },
                          controller: controller.namaLengkapController,
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            return controller.validatenamaLengkap(value!);
                          },
                          decoration: InputDecoration(
                              labelText: "Username",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.white,
                              accentColor: Colors.white,
                              hintColor: MaterialColors.muted),
                          child: TextFormField(
                            controller: controller.emailController,
                            onSaved: (value) {
                              controller.email = value;
                            },
                            validator: (value) {
                              return controller.validateEmail(value!);
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Email",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 8),
                        child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.white,
                              accentColor: Colors.white,
                              hintColor: MaterialColors.muted),
                          child: TextFormField(
                            controller: controller.passwordController,
                            onSaved: (value) {
                              controller.password = value;
                            },
                            validator: (value) {
                              return controller.validatePassword(value!);
                            },
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 4.0,
                                  textStyle: TextStyle(color: Colors.white),
                                  backgroundColor: haiTernakColors.primary,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 16.0)),
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
                              child: Text("DAFTAR",
                                  style: TextStyle(fontSize: 16))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextButton(
                            child: Text("Sudah Punya Akun? Login"),
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white.withOpacity(0.6)),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login');
                            }),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
