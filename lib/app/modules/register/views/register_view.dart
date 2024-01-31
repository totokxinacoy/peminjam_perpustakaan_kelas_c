import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_c/app/modules/register/controllers/register_controller.dart';



class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.namaController,
                  decoration: InputDecoration(hintText: "Masukkan Nama Pengguna"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Nama Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(hintText: "Masukkan Username"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Username tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.telpController,
                  decoration: InputDecoration(hintText: "Masukkan Nomor Telpon"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Nomor Telpon tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.alamatController,
                  decoration: InputDecoration(hintText: "Masukkan Alamat"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "alamat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.passwordController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Masukkan Password"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () {
                      controller.addAkun();
                    },
                    child: Text("Register")))
              ],
            ),
          )),
    );
  }
}