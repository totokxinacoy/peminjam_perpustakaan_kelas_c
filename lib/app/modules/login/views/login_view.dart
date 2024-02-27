import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_c/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181820),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Form(
              key: controller.formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/marnoski.png',
                      width: 400,
                      height: 400,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                        controller: controller.usernameController,
                        decoration: InputDecoration(
                          hintText: "Masukan Username",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Username tidak boleh kosong";
                          }
                          return null;
                        }),
                    SizedBox(height: 15.0),
                    TextFormField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          hintText: "Masukan Passoword",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        }),
                    SizedBox(height: 25.0),
            Row (
                children : [
                  Obx(() => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("Login"))),
                  SizedBox(width: 540),
                  SizedBox(height: 15.0),
                  ElevatedButton(onPressed : ()=>Get.toNamed(Routes.REGISTER), child: Text("Open Register")),
                ]
            ),
            ]
          ),
        ),
      ),
    ),
    );1;
  }
}
