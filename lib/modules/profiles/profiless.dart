import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

class Profoile extends StatelessWidget {
  const Profoile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> profileinfo = [
      'Prince',
      'Nd Techlaqnd',
      '9088990044',
      'Noida sector 2',
      '1234 5666 5666',
      'premium',
      'Car company'
    ];
    final List<String> profileinfo1 = [
      'Name:',
      'Company name:',
      'Mobile:',
      'Address:',
      'Aadhaar: ',
      'Plan:',
      'company:'
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.t1navbar1,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: size.height * 0.022,
            color: MyTheme.t1Iconcolor,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: MyTheme.t1Iconcolor,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhysicalModel(
              color: MyTheme.t1bacgroundcolors1,
              shadowColor: Colors.blueGrey,
              elevation: 6,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    //color: MyTheme.t1bacgroundcolors1,
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/images/JK_ROSHINI_png.png',
                        height: size.height * 0.11,
                        width: size.width * 0.8,
                      ),
                      Center(
                        child: SizedBox(
                          height: size.height * 0.45,
                          width: size.width * 0.85,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: profileinfo.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      //leading: Icon(Icons.add),
                                      title: SizedBox(
                                        width: size.width * 0.45,
                                        child: Text(
                                          //'GFG title',
                                          profileinfo1[index],
                                          style: GoogleFonts.anaheim(
                                              fontSize: size.height * 0.012,
                                              color: MyTheme.bacgroundcolors,
                                              fontWeight: FontWeight.w700),

                                          textScaleFactor: 1.8,
                                        ),
                                      ),
                                      trailing: SizedBox(
                                        width: size.width * 0.40,
                                        child: Text(
                                          profileinfo[index],
                                          // 'This is subtitle',
                                          style: GoogleFonts.anekBangla(
                                              fontSize: size.width * 0.027,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.lightGreenAccent),
                                          textScaleFactor: 1.7,
                                        ),
                                      ),
                                      //subtitle: Text('This is subtitle'),
                                      selected: true,
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
