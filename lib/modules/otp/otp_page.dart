import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';

import 'otp_input.dart';
import 'otp_phone_controller.dart';

class OTPPhone extends StatelessWidget {
  OTPPhone({
    Key? key,
    //required this.phone
  }) : super(key: key);

  //final phone;

  OtpTimerphoneController _otpTimerphoneController =
      Get.put(OtpTimerphoneController());

  //OtpTimerController _timeController = Get.put(OtpTimerController());

  //OtpTimerController3 _timeController3 = Get.put(OtpTimerController3());

  bool firstbox = false;
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    //bool value = false;

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _otpTimerphoneController.otpKey,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: 1000,
            width: 1000,
            decoration: BoxDecoration(
              //gradient: gradient1,
              image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/asset/background_1.png',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Signin with us and',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffd0d0d0),
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      'START EARNING',
                      style: GoogleFonts.poppins(
                        letterSpacing: 2,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff9e1f),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet.com',
                          style: GoogleFonts.raleway(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd0d0d0),
                          ),
                        ),
                        Text(
                          'consectetur adipiscing elit,sed do',
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd0d0d0),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          child:
                              Image.asset("lib/assets/asset/chat_support.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Chat Support',
                          style: TextStyle(
                              color: Color(0xffff9e1f),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                    //.pOnly(left: 37.w, bottom: 4.h),
                  ],
                ),
                Positioned(
                    top: 200,
                    right: -300,
                    left: -300,
                    child: Container(
                      height: 630,
                      width: 1100,
                      decoration: BoxDecoration(
                          color: Color(0xfff3f3f3), shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < 4; i++)
                                  OtpInput(
                                      validator:
                                          _otpTimerphoneController.otpValidator,
                                      controller:
                                          _otpTimerphoneController.otp[i],
                                      autoFocus: i == 0 ? true : false),
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            Text(
                              'RESEND OTP',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            InkWell(
                                onTap: () {
                                  _otpTimerphoneController.otpdigits();

                                  //_otpTimerphoneController.checkValidation(phone);
                                  ///
                                  //Get.to(()=> LoginPage());
                                  // _userProfileController.calluserProfileApi();
                                },
                                child: Container(
                                  height: 40,
                                  width: 330,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellow,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'SUBMIT',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  ),
                                )
                                //.pOnly(right: 39.w),
                                ),

                            SizedBox(
                              height: 120,
                            ),

                            Container(
                              height: 0.20,
                              width: 250,
                              color: Colors.black,
                            ),

                            // Container(
                            //   child: Theme(
                            //     data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                            //     child: TextField(
                            //       // textAlignVertical: TextAlignVertical.center,
                            //       decoration: InputDecoration(
                            //         contentPadding: EdgeInsets.symmetric(vertical: -0.2.h),
                            //         border: InputBorder.none,
                            //         focusedBorder: InputBorder.none,
                            //         prefixIcon: Container(
                            //             width: 15,
                            //             child: Padding(
                            //               padding: const EdgeInsets.all(6.0),
                            //               child: Image.asset('lib/assets/asset/password_change.png',fit: BoxFit.fitWidth,),
                            //             )) ,
                            //         hintText: 'Please Insert OTP',
                            //         hintStyle: TextStyle(
                            //             color: Colors.grey,
                            //             fontWeight: FontWeight.bold,
                            //             fontSize: 12
                            //         ),
                            //         labelStyle: TextStyle(
                            //             color: myFocusNode.hasFocus ? Colors.blue : textField
                            //         ),
                            //         enabledBorder: OutlineInputBorder(
                            //           borderSide: BorderSide(width: 0, color: textField),
                            //           borderRadius: BorderRadius.circular(8),
                            //         ),
                            //
                            //       ),
                            //     ),
                            //   ),
                            //
                            //   decoration: BoxDecoration (
                            //       borderRadius: new BorderRadius.all(new Radius.circular(8)),
                            //       color: textField   ),   width: 250,   height:4.h,
                            //   //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                            //   //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                            // ).pSymmetric(v: 1.5.h),

                            // Text('Resend OTP?',style: TextStyle(
                            //   fontSize: 10,fontWeight: FontWeight.bold,
                            //     color: Color(0xff120d3d),
                            // ),).pOnly(left: 46.w,bottom: 1.h),

                            // Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: InkWell(
                            //     onTap: () {
                            //       Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                            //     },
                            //     child: Container(
                            //       height: 3.5.h,
                            //       width: 30.w,
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(10),
                            //         color: Color(0xff120d3d),
                            //       ),
                            //       child: Center(child: 'SUBMIT'.text.white.semiBold.center.size(12).make()),
                            //     ),
                            //   ),
                            // ).pSymmetric(h: 91.w,v: 1.h),
                            //
                            //
                            //
                            // Container(
                            //   height: 0.1.h,
                            //   width: 250,
                            //   color: textField,
                            // ).pSymmetric(v: 1.h),
                            //
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Container(
                            //       height: 3.5.h,
                            //       width: 30.w,
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(10),
                            //         color: Color(0xff000066),
                            //       ),
                            //       child: Center(
                            //           child:Text('LOGIN WITH FACEBOOK',style: TextStyle(
                            //             fontSize: 9,
                            //             fontWeight: FontWeight.bold,
                            //             color: Colors.white,
                            //           ),),
                            //           //'LOGIN WITH FACEBOOK'.text.white.semiBold.center.size(8).make()
                            //         ),
                            //
                            //     ).pSymmetric(h: 2.w),
                            //     InkWell(
                            //       onTap: () {
                            //         Navigator.push(context, MaterialPageRoute(builder: (context)=>CardVerifications1()));
                            //
                            //       },//
                            //       child: Container(
                            //         height: 3.5.h,
                            //         width: 30.w,
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(10),
                            //           color: Color(0xffdd5144),
                            //         ),
                            //         child: Center(
                            //             child:Text('LOGIN WITH GOOGLE',style: TextStyle(
                            //               fontSize: 9,
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //             ),),
                            //         //'Login with google'.text.white.bold.center.size(8).make()
                            //         ),
                            //
                            //       ).pSymmetric(h: 2.w),
                            //     ),
                            //   ],
                            // ).pSymmetric(v: 1.h),
                            //
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Checkbox(
                            //       value: firstbox,
                            //       onChanged: (value) {
                            //         setState(() {
                            //           firstbox = value!;
                            //         });
                            //       },
                            //     ),
                            //
                            //     RichText(
                            //       text: TextSpan(
                            //         children: const <TextSpan>[
                            //           TextSpan(text:'By Clicking login,You agree to our ',
                            //             style: TextStyle(
                            //               fontSize: 9,fontWeight: FontWeight.bold,color: Colors.black,
                            //             ),
                            //           ),
                            //           TextSpan(text: 'Term & Conditions' ,style: TextStyle(
                            //             fontSize: 9,fontWeight: FontWeight.bold,color: Color(0xff120d3d),
                            //           ),),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ).pSymmetric(v: 1.h),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
