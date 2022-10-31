import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';
import 'package:roshini/controllers/signup_controller/signup_controler.dart';
import 'package:roshini/modules/home_page/home_page.dart';

//class SignUpPage extends GetView<SignUpController> {

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
String gender = "male";

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpController _signUpController = Get.put(SignUpController());

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: _signUpController.SignupFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.136,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/images/JK_ROSHINI_png.png'),
                            fit: BoxFit.fitWidth)),
                  ),
                  SizedBox(
                    height: 00,
                  ),
                  Text(
                    "SignUp with us!",
                    style: GoogleFonts.alegreyaSc(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.t1Iconcolor),
                  ),
                  SizedBox(
                    height: 0,
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
                    height: size.height * 0.02,
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
                          controller: _signUpController.nameController,
                          onSaved: (value) {
                            _signUpController.name = value!;
                          },
                          validator: (value) {
                            return _signUpController.validateName(value!);
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
                          controller: _signUpController.mobileController,
                          onSaved: (value) {
                            _signUpController.mobile = value!;
                          },
                          validator: (value) {
                            return _signUpController.validatemobile(value!);
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
                            hintText: 'Shoppe name',
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
                                'lib/assets/images/store.png',
                                //color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.name,
                          //obscureText: true,
                          controller: _signUpController.shopnameController,
                          onSaved: (value) {
                            _signUpController.shopname = value!;
                          },
                          validator: (value) {
                            return _signUpController.validateShopname(value!);
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
                        controller: _signUpController.addressController,
                        onSaved: (value) {
                          _signUpController.address = value!;
                        },
                        validator: (value) {
                          return _signUpController.validateAddress(value!);
                        },
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
                            hintText: 'Aadhaar No',
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
                                'lib/assets/images/credit-card.png',
                                //color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          //obscureText: true,
                          controller: _signUpController.aadharController,
                          onSaved: (value) {
                            _signUpController.aadhar = value!;
                          },
                          validator: (value) {
                            return _signUpController.validateaadharcard(value!);
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  Container(
                    width: size.width,
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyTheme.t1bacgroundcolors1,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            children: [
                              Radio(
                                // title: Text("Male"),
                                value: "male",
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              Text('Service')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            children: [
                              Radio(
                                // title: Text("Male"),
                                value: "female",
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              Text('Customer')
                            ],
                          ),
                        ),
                      ],
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
                            hintText: 'Password',
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
                                'lib/assets/images/lock.png',
                                color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          //obscureText: true,
                          controller: _signUpController.passwordControler,
                          onSaved: (value) {
                            _signUpController.password = value!;
                          },
                          validator: (value) {
                            return _signUpController.validatepassword(value!);
                          },
                        ),
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
                        "SignUp",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        _signUpController.checkLogin();
                        //Get.to(()=>NavBar());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  //NavBar()
                                  HomePage()),
                        );
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
