import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

class ComplainList extends StatelessWidget {
  const ComplainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          'Complain List',
          style: GoogleFonts.alatsi(
              fontWeight: FontWeight.w700,
              wordSpacing: 1,
              color: Colors.black,
              letterSpacing: 1),
        ),
        backgroundColor: MyTheme.t1navbar1,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height,
            width: size.width,
            //color: MyTheme.t1navbar1,
            child: Column(
              children: [],
            ),
          ),
          Positioned(
            top: size.height * 0.16,
            left: size.width * 0.00,
            right: size.width * 0.00,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.00),
              child: Container(
                height: size.height * 0.8,
                width: size.width,
                decoration: BoxDecoration(
                    color: MyTheme.t1bacgroundcolors1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.064,
                      ),
                      SizedBox(
                        height: size.height * 0.7,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.04,
                                    vertical: size.height * 0.001),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01,
                                      vertical: size.height * 0.004),
                                  child: PhysicalModel(
                                    color: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 3,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: size.height * 0.26,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          gradient: MyTheme.gradient7,
                                          // gradient: const RadialGradient(
                                          //   colors: [Colors.blueGrey, Colors.black],
                                          //   radius: 0.82,
                                          //   focal: Alignment(0.7, -0.7),
                                          //   tileMode: TileMode.clamp,
                                          // ),
                                          //color: MyTheme.t1bacgroundcolors1,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          // border: Border.all(
                                          //     color: Colors.red, width: 3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: size.height * 0.25,
                                                width: size.width * 0.4,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Complain:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Name:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Mobile:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Product/S:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Address:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Service type:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      'Status:',
                                                      style:
                                                          GoogleFonts.alegreya(
                                                              color: Colors
                                                                  .redAccent,
                                                              fontSize:
                                                                  size.height *
                                                                      0.017,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.25,
                                                width: size.width * 0.4,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Rk01',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Kavi Singh',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      '9709879632',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Ac Repair',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Noida',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Exchange',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Open',
                                                      style: GoogleFonts.alatsi(
                                                          color: Colors.white,
                                                          fontSize:
                                                              size.height *
                                                                  0.014,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.02,
            left: size.width * 0.04,
            right: size.width * 0.04,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.00),
              child: Container(
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: MyTheme.t1containercolor,
                  border: Border.all(color: Colors.redAccent, width: 2),
                  image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/istockphoto-1359695027-170667a.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
