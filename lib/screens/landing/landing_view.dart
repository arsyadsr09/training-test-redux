import 'package:flutter/material.dart';
import 'package:project_test3/utils/colors_custom.dart';
import 'package:project_test3/widgets/custom_text.dart';
import 'package:project_test3/widgets/form_text.dart';
import './landing_view_model.dart';

class LandingView extends LandingViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorsCustom.lightGrey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              "Hello Again!",
              fontSize: 36,
              color: ColorsCustom.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
            CustomText(
              "Welcome back you've\nbeen missed!",
              fontSize: 28,
              color: ColorsCustom.black,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            FormText(
              controller: emailController,
              hint: "Email",
              icon: Icons.email,
            ),
            const SizedBox(height: 10),
            FormText(
              controller: passwordController,
              hint: "Password",
              icon: Icons.password,
              obscureText: true,
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                "Forgot Password",
                fontSize: 14,
                color: ColorsCustom.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 8,
                      backgroundColor: ColorsCustom.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: onLoginButtonClicked,
                  child: const CustomText(
                    "Sign In",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
