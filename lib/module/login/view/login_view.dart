import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/widget/button/button.dart';
import '../../../component/widget/textfield/textfield.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../register/view/register_view.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Text(
                          "LOGIN",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const ExTextField(
                          id: "email",
                          label: "Email",
                        ),
                        const ExTextField(
                          id: "password",
                          label: "password",
                          textFieldType: TextFieldType.password,
                        ),
                        ExButton(
                          onPressed: () => Get.offAll(const DashboardView()),
                          label: "Login",
                        ),
                        InkWell(
                          onTap: () => Get.to(const RegisterView()),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Register",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
