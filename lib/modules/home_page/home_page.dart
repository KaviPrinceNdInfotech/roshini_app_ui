import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> productname = [
    'Invoice',
    'Add Technician',
    'Profile',
    'Complaint List',
    'Customer Support',
    'Add Services',
    // 'service 7',
    // 'service 8',
  ];

  final List<String> productimage = [
    'lib/assets/images/invoice.png',
    'lib/assets/images/add-user.png',
    'lib/assets/images/profile.png',
    'lib/assets/images/complaint.png',
    'lib/assets/images/support1.png',
    'lib/assets/images/cloud-computing.png',
    // 'service 7',
    // 'service 8',
  ];

  final List<IconData> producticons = [
    Icons.request_page_rounded,
    Icons.request_quote_outlined,
    Icons.cases,
    Icons.share_outlined,
    Icons.home_work,
    Icons.holiday_village,
    // Icons.card_giftcard_outlined,
    // Icons.card_membership,
  ];

  final List<IconData> product1icons = [
    Icons.logout,
    Icons.backpack,
    Icons.email_outlined,
    Icons.payment,
  ];
  final List<String> productname1 = [
    'Logout',
    'Voucher',
    'Feedback',
    'Support',
  ];
  // _launchURLBrowser() async {
  //   var url = Uri.parse("tel:+91 7019380052");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // //from here whats app...............
  // _launchWhatsapp() async {
  //   const url = "https://wa.me/?text=YourTextHere";
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // void whatsAppOpen() async {
  //   bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");
  //
  //   if (whatsapp) {
  //     await FlutterLaunch.launchWhatsapp(
  //         phone: "5534992016100", message: "Hello, flutter_launch");
  //   } else {
  //     print('error');
  //   }
  // }

  // _launchURLEmail() async {
  //   var url = Uri.parse(
  //     //'https://protocoderspoint.com/'
  //       "mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int pageIndex = 0;
    GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: MyTheme.t1navbar1,
          automaticallyImplyLeading: false,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.dehaze_rounded,
          //     size: 23,
          //     color: MyTheme.t1Iconcolor,
          //   ),
          //   onPressed: () {
          //     _key.currentState!.openDrawer();
          //   },
          // ),
          title: Image.asset(
            'lib/assets/images/JK_Roshini1logofull.png',
            height: size.height * 0.3,
            width: size.width * 0.4,
          )
          // Text(
          //   'Roshini',
          //   style: TextStyle(
          //     fontSize: 18,
          //     color: MyTheme.t1Iconcolor,
          //   ),
          // ),
          // actions: [
          //   Row(
          //     children: [
          //       IconButton(
          //           disabledColor: MyTheme.t1Iconcolor,
          //           splashColor: MyTheme.t1Iconcolor,
          //           focusColor: MyTheme.t1Iconcolor,
          //           onPressed: () {
          //             //Get.to(() => NotificationPage());
          //           },
          //           icon: Icon(
          //             Icons.notifications_none,
          //             size: 23,
          //             color: MyTheme.t1Iconcolor,
          //           )),
          //       // IconButton(
          //       //     onPressed: () {
          //       //
          //       //       print('call');
          //       //     },
          //       //     icon: Icon(
          //       //       Icons.local_phone_outlined,
          //       //       size: 23,
          //       //     )),
          //       // IconButton(
          //       //     onPressed: () {
          //       //       _launchURLEmail();
          //       //     },
          //       //     icon: Icon(
          //       //       Icons.email_outlined,
          //       //       size: 23,
          //       //     )),
          //     ],
          //   ),
          // ],
          ),

      ///drawer: MainDrawer(),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: MyTheme.t1navbar1,
          child: Column(
            children: [
              Container(
                height: size.height * 0.25,
                width: size.width,
                color: MyTheme.t1navbar1,
                child: Mycrusial(),
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PhysicalModel(
                  elevation: 2,
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: size.height * 0.1,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: MyTheme.gradient7,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.03),
                        child: Row(
                          children: [
                            Text(
                              'Complaint Register',
                              style: GoogleFonts.abhayaLibre(
                                  color: Colors.white,
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Material(
                              elevation: 2,
                              color: Colors.black12,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/right-arrow.gif'),
                                        fit: BoxFit.fitWidth)),
                                // child: Image.asset('lib/assets/images/right-arrow.gif')
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: SizedBox(
                  height: size.height * 0.456,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.height * 0.4,
                        childAspectRatio: 4 / 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 7,
                        mainAxisExtent: size.height * 0.146,
                      ),
                      itemCount: productname.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              // Get.to(() => ProfilePage());
                              //Get.to(() => WomenPage());
                              //Get.to(() => WaterTracking());
                            } else if (index == 1) {
                              // Get.to(() => AmcPage());
                            } else if (index == 2) {
                              //Get.to(() => PaymentOptions());
                              //Get.to(() => HotDeals());
                              //Get.to(() => WalkTracking());
                            } else if (index == 3) {
                              // whatsAppOpen();
                              // _launchWhatsapp();

                              ///Todo this is showing dark and white mode
                              ///
                              //Get.to(() => TheJwelleryStore());

                              //Get.to(() => CarouselDemo());
                            } else if (index == 4) {
                              //Get.to(() => AssociatePage());
                            } else if (index == 5) {
                              //Get.to(() => BookHolidayPage());
                            } else if (index == 6) {
                              //Get.to(() => MyHolidayPage());
                            } else if (index == 7) {
                              //Get.to(() => TermsMemberPage());
                            }
                          },
                          child: PhysicalModel(
                            color: Colors.white,
                            elevation: 2,
                            shadowColor: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: SweepGradient(
                                    startAngle: pi * 0.2,
                                    endAngle: pi * 1.8,
                                    colors: [
                                      Colors.blue.shade300,
                                      Colors.yellow.shade500,
                                      Colors.tealAccent,
                                      Colors.green,
                                      Colors.blue.shade300,
                                    ],
                                    stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
                                    tileMode: TileMode.clamp,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PhysicalModel(
                                      elevation: 1,
                                      color: Colors.white,
                                      shadowColor: Colors.blueGrey,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        height: size.height * 0.097,
                                        width: size.width * 0.21,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          //borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            productimage[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        // Icon(
                                        //   producticons[index],
                                        //   size: size.height * 0.036,
                                        //   color: MyTheme.t1Iconcolor,
                                        // ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Text(
                                      productname[index],
                                      style: GoogleFonts.alegreya(
                                          color: MyTheme.t1Iconcolor,
                                          fontSize: size.height * 0.015,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // PhysicalModel(
                          //   color: MyTheme.t1containercolor,
                          //   shadowColor: Colors.grey.shade200,
                          //   elevation: 8,
                          //   shape: BoxShape.rectangle,
                          //   borderRadius: BorderRadius.circular(10),
                          //   child: Container(
                          //     height: 100,
                          //     alignment: Alignment.center,
                          //
                          //     //child: Text(myProducts[index]["name"]),
                          //     decoration: BoxDecoration(
                          //         // color: Colors.white,
                          //
                          //         color: MyTheme.t1containercolor,
                          //         borderRadius: BorderRadius.circular(10)),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         PhysicalModel(
                          //           elevation: 5,
                          //           color: Colors.white,
                          //           shadowColor: Colors.blueGrey,
                          //           borderRadius: BorderRadius.circular(10),
                          //           child: Container(
                          //             height: 60,
                          //             width: 60,
                          //             decoration: BoxDecoration(
                          //               color: Colors.white,
                          //               borderRadius: BorderRadius.circular(10),
                          //             ),
                          //             child: Column(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.center,
                          //               crossAxisAlignment:
                          //                   CrossAxisAlignment.center,
                          //               children: [
                          //                 Icon(
                          //                   producticons[index],
                          //                   size: size.height * 0.036,
                          //                   color: MyTheme.t1Iconcolor,
                          //                 ),
                          //                 Text(
                          //                   productname[index],
                          //                   style: TextStyle(
                          //                       color: MyTheme.t1Iconcolor,
                          //                       fontSize: size.height * 0.014,
                          //                       fontWeight: FontWeight.w700),
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        );
                      }),
                ),
              ),
              // SizedBox(
              //   height: 2,
              // ),
              //
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
              //   child: SizedBox(
              //     height: size.height*0.15,
              //     width: size.width,
              //     child: ListView.builder(
              //       shrinkWrap: true,
              //         physics: NeverScrollableScrollPhysics(),
              //         scrollDirection: Axis.horizontal,
              //         itemCount: productname1.length,
              //         itemBuilder: (BuildContext context, int index) {
              //           return Padding(
              //             padding: EdgeInsets.symmetric(
              //                 horizontal: 8, vertical: 0),
              //             child: PhysicalModel(
              //               color: Colors.grey,
              //               shadowColor: Colors.white,
              //               elevation: 7,
              //               shape: BoxShape.rectangle,
              //               borderRadius: BorderRadius.circular(0),
              //               child: InkWell(
              //                 onTap: () {
              //                   if (index == 0) {
              //                     //Get.to(() => ProfilePage());
              //                     //Get.to(() => LoginPage());
              //                     //Get.to(() => WaterTracking());
              //                   } else if (index == 1) {
              //                     //Get.to(() => MyVoucherPage());
              //                   } else if (index == 2) {
              //                     // Get.defaultDialog(
              //                     //     title: "",
              //                     //     //middleText: "",
              //                     //     backgroundColor: Colors.transparent,
              //                     //     // titleStyle:
              //                     //     //     TextStyle(color: Colors.white),
              //                     //     // middleTextStyle:
              //                     //     //     TextStyle(color: Colors.white),
              //                     //     //textConfirm: "Confirm",
              //                     //     //textCancel: "Cancel",
              //                     //     //cancelTextColor: Colors.white,
              //                     //     //confirmTextColor: Colors.white,
              //                     //     //buttonColor: Colors.red,
              //                     //     barrierDismissible: true,
              //                     //     radius: 0,
              //                     //     content: Column(
              //                     //       children: [
              //                     //         Container(
              //                     //           height: size.height*0.05,
              //                     //           width: size.width,
              //                     //           decoration: BoxDecoration(
              //                     //               color: Colors.red,
              //                     //               border: Border.all(
              //                     //                   color:
              //                     //                   MyTheme.ThemeColors,
              //                     //                   width: 3),
              //                     //               image: DecorationImage(
              //                     //                 image: AssetImage(
              //                     //                     'lib/assets/rotate2.jpeg'),
              //                     //                 fit: BoxFit.fill,
              //                     //               )),
              //                     //           child: TextField(
              //                     //             maxLines: 21,
              //                     //             cursorColor:
              //                     //             MyTheme.t1containercolor,
              //                     //             style: TextStyle(
              //                     //                 color: MyTheme.t1containercolor,
              //                     //                 fontSize: 10),
              //                     //             decoration: InputDecoration(
              //                     //               //fillColor: Colors.grey.shade200,
              //                     //               contentPadding:
              //                     //               EdgeInsets.symmetric(
              //                     //                   vertical: 20,
              //                     //                   horizontal: 20),
              //                     //               // border: OutlineInputBorder(
              //                     //               //     borderRadius: BorderRadius.circular(0),
              //                     //               //     borderSide: BorderSide(
              //                     //               //       color: Colors.red,
              //                     //               //       width: 1,
              //                     //               //     )),
              //                     //               hintText: 'Your  Feedback',
              //                     //               hintStyle: TextStyle(
              //                     //                   color: Colors.grey,
              //                     //                   fontSize: 10,
              //                     //                   fontWeight:
              //                     //                   FontWeight.w500),
              //                     //
              //                     //               disabledBorder:
              //                     //               InputBorder.none,
              //                     //               border: InputBorder.none,
              //                     //               filled: true,
              //                     //             ),
              //                     //           ),
              //                     //         ),
              //                     //         InkWell(
              //                     //           onTap: () {
              //                     //             Get.back();
              //                     //           },
              //                     //           child: Container(
              //                     //               height: size.height*0.04,
              //                     //               width: size.width,
              //                     //               decoration: BoxDecoration(
              //                     //                 color: MyTheme.t1containercolor,
              //                     //               ),
              //                     //               child: Center(
              //                     //                   child: Text(
              //                     //                     "Send",
              //                     //                     style: TextStyle(
              //                     //                       color: Colors.white,
              //                     //                     ),
              //                     //                   ))),
              //                     //         ),
              //                     //       ],
              //                     //     ));
              //                     //Get.to(() => HotDeals());
              //                     //Get.to(() => WalkTracking());
              //                   } else if (index == 3) {
              //                     // FlutterPhoneDirectCaller.callNumber(
              //                     //     '+911140193528');
              //                     //launch('tel:7019380053');
              //                     // _launchURLBrowser();
              //                     //launch('tel:+91 7019380052');
              //                     print('call');
              //
              //                     ///Todo this is showing dark and white mode
              //                     ///
              //                     //Get.to(() => TheJwelleryStore());
              //
              //                     //Get.to(() => CarouselDemo());
              //                   }
              //                 },
              //                 child: Container(
              //                   height: size.height*0.12,
              //                   width: size.width*0.2,
              //                   color: Colors.white70,
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Icon(
              //                         product1icons[index],
              //                         color: MyTheme.t1containercolor,
              //                         size: 26,
              //                       ),
              //                       SizedBox(
              //                         height: 20,
              //                       ),
              //                       Text(
              //                         productname1[index],
              //                         style: TextStyle(
              //                             color: Colors.grey.shade600,
              //                             fontSize: 9,
              //                             fontWeight: FontWeight.w500),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           );
              //         }),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Mycrusial extends StatelessWidget {
  Mycrusial({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  final List<String> images = [
    "https://images.unsplash.com/photo-1625047509248-ec889cbff17f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1607400201515-c2c41c07d307?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1621905251918-48416bd8575a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWMlMjByZXBhaXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1604754742629-3e5728249d73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1513366884929-f0b3bedfb653?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1577801622187-9a1076d049da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1615870123253-f3de8aa89e24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXxjVlFHYWlJSTI3OHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  ];
  final bool _isPlaying = true;

  get _sliderKey => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height * 0.25,
        child: ListView(
          children: <Widget>[
            Container(
              height: size.height * 0.25,
              child: CarouselSlider.builder(
                //scrollPhysics: NeverScrollableScrollPhysics(),
                key: _sliderKey,
                unlimitedMode: true,
                autoSliderTransitionTime: Duration(seconds: 1),
                //autoSliderDelay: Duration(seconds: 5),
                slideBuilder: (index) {
                  return Container(
                    height: 270,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(images[index]), fit: BoxFit.fill),
                    ),
                    //color: colors[index],
                    // child: Text(
                    //   letters[index],
                    //   style: TextStyle(fontSize: 200, color: Colors.white),
                    // ),
                  );
                },
                slideTransform: DefaultTransform(),
                slideIndicator: CircularSlideIndicator(
                  indicatorBorderWidth: 2,
                  indicatorRadius: 4,
                  itemSpacing: 15,
                  currentIndicatorColor: MyTheme.t1Iconcolor,
                  padding: EdgeInsets.only(bottom: 3),
                ),
                itemCount: images.length,
                enableAutoSlider: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Align(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
