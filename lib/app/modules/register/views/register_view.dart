import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/login/views/login_view.dart';
import 'package:haiternak_mobile/app/modules/register/controllers/register_controller.dart';
import 'package:haiternak_mobile/configs/configs.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: controller.registerFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SizedBox(
                    height: getProperWidht(10),
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Daftar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromARGB(221, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProperWidht(15),
                  ),
                  Text(
                    "Isi form yang ada untuk melakukan pendaftaran",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(221, 104, 104, 104)),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: getProperWidht(50),
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Nama Lengkap",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromARGB(221, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProperWidht(8),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Masukkan Nama Lengkap",
                      prefixIcon: Icon(Icons.person_sharp),
                    ),
                    keyboardType: TextInputType.name,
                    controller: controller.namaLengkapController,
                    onSaved: (value) {
                      controller.namaLengkap = value!;
                    },
                    validator: (value) {
                      return controller.validatenamaLengkap(value!);
                    },
                  ),
                  SizedBox(
                    height: getProperWidht(20),
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Username",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromARGB(221, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProperWidht(8),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Masukkan Username",
                      prefixIcon: Icon(Icons.account_circle_sharp),
                    ),
                    keyboardType: TextInputType.name,
                    controller: controller.usernameController,
                    onSaved: (value) {
                      controller.username = value!;
                    },
                    validator: (value) {
                      return controller.validateusername(value!);
                    },
                  ),
                  SizedBox(
                    height: getProperWidht(20),
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromARGB(221, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProperWidht(8),
                  ),
                  TextFormField(
                    // cursorColor: kBackgroundColor1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Masukkan Alamat Email",
                      prefixIcon: Icon(Icons.email),
                    ),

                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                  ),
                  SizedBox(
                    height: getProperWidht(25),
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromARGB(221, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProperWidht(8),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Masukkan Password",
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                  SizedBox(
                    height: getProperWidht(25),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 65, 172, 254)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      ),
                      child: Text(
                        "Daftar",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        controller.checkRegister();
                      },
                    ),
                  ),
                  SizedBox(
                    height: getProperWidht(50),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    //child: Text('Don\'t have an account? Create'),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: "Sudah Punya Akun? "),
                      TextSpan(
                        text: 'Masuk',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginView()));
                          },
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
