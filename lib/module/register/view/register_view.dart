import 'package:flutter/material.dart';
import '../../../component/widget/button/button.dart';
import '../../../component/widget/textfield/textfield.dart';

import 'package:get/get.dart';

import '../../dashboard/view/dashboard_view.dart';
import '../../login/view/login_view.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: const Text("Register"),
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
                          "REGISTER",
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
                          label: "Register",
                        ),
                        InkWell(
                          onTap: () => Get.to(const LoginView()),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Back to Login"),
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
