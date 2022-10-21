import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme/app_color.dart';
import '../../constants/widgets/app_icons.dart';
import '../../constants/widgets/button_custom.dart';
import '../../constants/widgets/custom_field.dart';
import '../../controllers/login_controller/login_controllers.dart';
import '../otp/otp_page.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      //bacgroundcolors,
      //AppColors.mainColor,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// app icon
                SizedBox(height: height * 0.05),
                Image.asset(
                  'lib/assets/images/111424-phone-verification-otp-animation.gif',
                  //color: MyTheme.t1navbar1,
                  // AppIcons.appLogo,
                  height: height * 0.2,
                ),

                /// Don't Have an Account text
                SizedBox(height: height * 0.05),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Please Verify your Number.',
                        //'Don\'t have an account?',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: MyTheme.containercolor7
                            //AppColors.whiteColor,
                            ),
                      ),
                      // const WidgetSpan(child: SizedBox(width: 10.0)),
                      // TextSpan(
                      //   text: 'SIGN UP',
                      //   style: GoogleFonts.poppins(
                      //       fontSize: 12.0,
                      //       fontWeight: FontWeight.w500,
                      //       color: MyTheme.containercolor7
                      //       //AppColors.whiteColor,
                      //       ),
                      //   recognizer: TapGestureRecognizer()
                      //     ..onTap = () => Get.to(
                      //           Container(),
                      //           //const SignupScreen(),
                      //         ),
                      // ),
                    ],
                  ),
                ),

                /// email field
                SizedBox(height: height * 0.06),
                CustomTextField(
                  controller: controller.emailController,
                  obscureText: false,
                  hintText: 'Enter Your Mobile',
                  keyboardType: TextInputType.number,
                  prefixIconPath: AppIcons.phoneIcon,
                  suffixIcon: null,
                ),

                // /// password field
                // SizedBox(height: height * 0.02),
                // CustomTextField(
                //   controller: controller.passwordController,
                //   obscureText: true,
                //   hintText: 'Password',
                //   keyboardType: TextInputType.text,
                //   prefixIconPath: AppIcons.lockIcon,
                //   suffixIcon: null,
                // ),

                /// verify button
                SizedBox(height: height * 0.05),
                CustomButton(
                  onTap: () {
                    Get.to(() => OTPPhone());
                  },
                  btnText: 'Verify',
                ),

                /// forgot password Button
                // SizedBox(height: height * 0.01),
                // TextButton(
                //   onPressed: () {
                //     //Get.to(ForgotPasswordScreen());
                //   },
                //   child: Text(
                //     'Forgot Password?',
                //     style: GoogleFonts.poppins(
                //         fontSize: 14.0,
                //         fontWeight: FontWeight.w400,
                //         color: MyTheme.containercolor7
                //         //AppColors.whiteColor,
                //         ),
                //   ),
                // ),

                /// login with Google button
                // SizedBox(height: height * 0.08),
                // CustomButton(
                //   onTap: () {},
                //   btnText: '',
                //   btnColor: AppColors.whiteColor,
                //   btnDataRow: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Image.asset(
                //         AppIcons.googleIcon,
                //         height: 10,
                //         width: 10,
                //       ),
                //       const SizedBox(width: 8.0),
                //       Text(
                //         'Login with Google',
                //         style: GoogleFonts.poppins(
                //           fontSize: 14.0,
                //           fontWeight: FontWeight.w400,
                //           color: AppColors.blackColor,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                /// login with facebook
                // SizedBox(height: height * 0.02),
                // CustomButton(
                //   onTap: () {},
                //   btnText: '',
                //   btnColor: AppColors.whiteColor,
                //   btnDataRow: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Image.asset(
                //         AppIcons.fbIcon,
                //         height: 10,
                //         width: 10,
                //       ),
                //       const SizedBox(width: 8.0),
                //       Text(
                //         'Login with Facebook',
                //         style: GoogleFonts.poppins(
                //           fontSize: 14.0,
                //           fontWeight: FontWeight.w400,
                //           color: AppColors.blackColor,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
