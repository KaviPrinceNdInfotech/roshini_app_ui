import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

import '../../controllers/add_services_controllerss/add_service_controller.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage({Key? key}) : super(key: key);

//   @override
//   State<ComplaintPage> createState() => _ComplaintPageState();
// }
//
// class _ComplaintPageState extends State<ComplaintPage> {
//   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
//
//   String gender = "Product";

  // RegisterComplainController _registerComplainController =
  // Get.put(RegisterComplainController());

  AddserviceController _addserviceController = Get.put(AddserviceController());

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
              key: _addserviceController.addserviceformkey,
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
                    "Add Your Services!",
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
                            hintText: 'Add Service',
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
                          //keyboardType: TextInputType.visiblePassword,
                          //obscureText: true,
                          controller: _addserviceController.serviceController,
                          onSaved: (value) {
                            _addserviceController.service = value!;
                          },
                          validator: (value) {
                            return _addserviceController
                                .validateService(value!);
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.06,
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
                        "ADD SERVICE",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        _addserviceController.checkService();
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
