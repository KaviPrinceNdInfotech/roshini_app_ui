import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

import '../../controllers/register_complaint_controller/register_complain_controller.dart';

class ComplaintPage extends StatelessWidget {
  ComplaintPage({Key? key}) : super(key: key);

//   @override
//   State<ComplaintPage> createState() => _ComplaintPageState();
// }
//
// class _ComplaintPageState extends State<ComplaintPage> {
//   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
//
//   String gender = "Product";

  RegisterComplainController _registerComplainController =
      Get.put(RegisterComplainController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyTheme.t1navbar1,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 5, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: _registerComplainController.ComplainFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/images/JK_ROSHINI_png.png',
                    //"lib/assets/images/JK_Roshinilogo.png",
                    height: size.height * 0.15,
                    width: size.width * 0.5, fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 00,
                  ),
                  Text(
                    "Register Your Complain!",
                    style: GoogleFonts.alegreyaSc(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.t1Iconcolor),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     labelText: "Email",
                  //     prefixIcon: Icon(Icons.email),
                  //   ),
                  //   keyboardType: TextInputType.emailAddress,
                  //   controller: controller.emailController,
                  //   onSaved: (value) {
                  //     controller.email = value!;
                  //   },
                  //   validator: (value) {
                  //     return controller.validateEmail(value!);
                  //   },
                  // ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Name',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            //focusedBorder: InputBorder.none,
                            //enabledBorder: InputBorder.none,
                            // errorBorder: InputBorder.none,
                            // border: InputBorder.none,

                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/profile.png',
                                color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          //obscureText: true,
                          controller:
                              _registerComplainController.nameController,
                          onSaved: (value) {
                            _registerComplainController.name = value!;
                          },
                          validator: (value) {
                            return _registerComplainController
                                .validateName(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Phone',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            //focusedBorder: InputBorder.none,
                            //enabledBorder: InputBorder.none,
                            // errorBorder: InputBorder.none,
                            // border: InputBorder.none,

                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/smartphone.png',
                                //color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          //obscureText: true,
                          controller:
                              _registerComplainController.mobileController,
                          onSaved: (value) {
                            _registerComplainController.mobile = value!;
                          },
                          validator: (value) {
                            return _registerComplainController
                                .validatemobile(value!);
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.45,
                        child: Container(
                          width: size.width * 45,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyTheme.t1bacgroundcolors1,
                          ),
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                  // title: Text("Male"),
                                  value: "Product",
                                  groupValue: _registerComplainController
                                      .selectedServicee.value,
                                  onChanged: (value) {
                                    _registerComplainController
                                        .onChangeServicee(value!);
                                    // setState(() {
                                    //   gender = value.toString();
                                    // });
                                  },
                                ),
                              ),
                              Text('Product')
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: size.width * 0.45,
                        child: Container(
                          width: size.width * 45,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyTheme.t1bacgroundcolors1,
                          ),
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                  // title: Text("Male"),
                                  value: "Services",
                                  groupValue: _registerComplainController
                                      .selectedServicee.value,
                                  onChanged: (value) {
                                    _registerComplainController
                                        .onChangeServicee(value!);
                                    // setState(() {
                                    //   gender = value.toString();
                                    // });
                                  },
                                ),
                              ),
                              Text('Services')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        //maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,

                          fillColor: MyTheme.t1bacgroundcolors1,
                          hintText: 'Address',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 4.0, top: 16.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.green),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          //focusedBorder: InputBorder.none,
                          //enabledBorder: InputBorder.none,
                          // errorBorder: InputBorder.none,
                          // border: InputBorder.none,

                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // labelText: "Password",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.012,
                                horizontal: size.width * 0.02),
                            child: Image.asset(
                              'lib/assets/images/home.png',
                              color: MyTheme.t1Iconcolor,
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.streetAddress,
                        //obscureText: true,
                        controller:
                            _registerComplainController.addressController,
                        onSaved: (value) {
                          _registerComplainController.address = value!;
                        },
                        validator: (value) {
                          return _registerComplainController
                              .validateAddress(value!);
                        },
                      ),
                    ),
                  ),

                  ///TODO: here drop down............

                  // SizedBox(
                  //   height: size.height * 0.03,
                  // ),
                  //
                  // Container(
                  //   height: size.height * 0.06,
                  //   decoration: BoxDecoration(
                  //       color: MyTheme.t1bacgroundcolors1,
                  //       borderRadius: BorderRadius.circular(10)),
                  //   //: Colors.red,
                  //   child: DropdownButtonFormField<String>(
                  //     decoration: InputDecoration(
                  //       filled: true,
                  //
                  //       fillColor: MyTheme.t1bacgroundcolors1,
                  //       hintText: 'Address',
                  //       contentPadding: const EdgeInsets.only(
                  //           left: 14.0, bottom: 4.0, top: 7.0),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: new BorderSide(color: Colors.green),
                  //         borderRadius: new BorderRadius.circular(10),
                  //       ),
                  //       enabledBorder: UnderlineInputBorder(
                  //         borderSide: new BorderSide(color: Colors.transparent),
                  //         borderRadius: new BorderRadius.circular(10.0),
                  //       ),
                  //       //focusedBorder: InputBorder.none,
                  //       // enabledBorder: InputBorder.none,
                  //       errorBorder: InputBorder.none,
                  //       border: InputBorder.none,
                  //
                  //       // border: OutlineInputBorder(
                  //       //   borderSide:
                  //       //   BorderSide(color: Colors.red, width: 2.0),
                  //       //   borderRadius: BorderRadius.circular(10),
                  //       // ),
                  //       // labelText: "Password",
                  //       prefixIcon: Padding(
                  //         padding: EdgeInsets.symmetric(
                  //             vertical: size.height * 0.01,
                  //             horizontal: size.width * 0.02),
                  //         child: Image.asset(
                  //           'lib/assets/images/home.png',
                  //           color: MyTheme.t1Iconcolor,
                  //           height: 10,
                  //           width: 10,
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     value: dropdownValue,
                  //     icon: const Icon(Icons.arrow_downward),
                  //     elevation: 16,
                  //     style: const TextStyle(color: Colors.deepPurple),
                  //     // underline: Container(
                  //     //   height: 2,
                  //     //   color: Colors.deepPurpleAccent,
                  //     // ),
                  //     onChanged: (String? value) {
                  //       // This is called when the user selects an item.
                  //       setState(() {
                  //         dropdownValue = value!;
                  //       });
                  //     },
                  //     items: list.map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Text(value),
                  //       );
                  //     }).toList(),
                  //   ),
                  // ),

                  // Obx(
                  //       () => DropdownButtonHideUnderline(
                  //     child: DropdownButton(
                  //       // Initial Value
                  //       value: _signUpController.selectedCity.value,
                  //       //  menuMaxHeight: 350,
                  //       // Down Arrow Icon
                  //       icon: const Icon(Icons.keyboard_arrow_down),
                  //       hint: Text(
                  //         "City",
                  //         style: TextStyle(color: Colors.grey.shade400),
                  //       ),
                  //       // Array list of items
                  //       items: _signUpController.cities
                  //           .map((String value) {
                  //         return DropdownMenuItem(
                  //           value: value,
                  //           child: SizedBox(
                  //             //  width: 200,
                  //               child: Text(
                  //                 value,
                  //                 maxLines: 2,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 style: GoogleFonts.poppins(
                  //                   color: Colors.black,
                  //                   fontSize: 11,
                  //                 ),
                  //               )),
                  //         );
                  //       }).toList(),
                  //       onChanged: (String? newValue) {
                  //         _signUpController.selectedCity.value =
                  //         newValue!;
                  //       },
                  //     ),
                  //   ),
                  // ),

                  // DropdownButton(
                  //     hint: Text(
                  //       'Book Type',
                  //     ),
                  //     onChanged: (newValue) {
                  //      // controller.selectedDrowpdown=newValue;
                  //       controller.update();
                  //     },
                  //     value: controller.selectedDrowpdown,
                  //     // items: [
                  //     //   for (var data in controller.dropdownTextList)
                  //     //     DropdownMenuItem(
                  //     //       child: new Text(
                  //     //         data,
                  //     //       ),
                  //     //       value: data,
                  //     //     )
                  //     // ]
                  // ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        child: Container(
                          width: size.width * 3,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyTheme.t1bacgroundcolors1,
                          ),
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                  // title: Text("Male"),
                                  value: "AMC",
                                  groupValue: _registerComplainController
                                      .selectedService.value,
                                  onChanged: (value) {
                                    _registerComplainController
                                        .onChangePlan(value!);
                                    // setState(() {
                                    //   gender = value.toString();
                                    // });
                                  },
                                ),
                              ),
                              SizedBox(
                                  width: size.width * 0.17, child: Text('AMC'))
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Container(
                          width: size.width * 3,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyTheme.t1bacgroundcolors1,
                          ),
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                    // title: Text("Male"),
                                    value: "Exchange",
                                    groupValue: _registerComplainController
                                        .selectedService.value,
                                    onChanged: (value) {
                                      _registerComplainController
                                          .onChangePlan(value!);
                                    }),
                              ),
                              SizedBox(
                                  width: size.width * 0.17,
                                  child: Text('Exchange')),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Container(
                          width: size.width * 3,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyTheme.t1bacgroundcolors1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(
                                () => Radio(
                                    splashRadius: 20,
                                    // title: Text("Male"),
                                    value: "Warranty",
                                    groupValue: _registerComplainController
                                        .selectedService.value,
                                    onChanged: (value) {
                                      _registerComplainController
                                          .onChangePlan(value!);
                                    }),
                              ),
                              SizedBox(
                                  width: size.width * 0.17,
                                  child: Text('Warranty')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.t1containercolor),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      ),
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        _registerComplainController.checkComplain();
                        //Get.to(()=>NavBar());
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           //NavBar()
                        //           HomePage()),
                        // );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
