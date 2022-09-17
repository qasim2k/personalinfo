
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signupcontrollr.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formkey=GlobalKey<FormState>();
  final SignupController _signupcontroller = Get.put(SignupController());
  @override
 
  
 
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(
                key: _formkey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color.fromARGB(255, 60, 8, 109),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              // child: ?_image==null:

                              InkWell(
                                // onTap: getImage,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 70.0,
                                  child: CircleAvatar(
                                    radius: 68.0,
                                    child: ClipOval(
                                      // child: (_image != null)
                                      //     ? Image.file(
                                      //         _image!,
                                      //         width: 160,
                                      //         height: 140,
                                      //         fit: BoxFit.fill,
                                      //       )
                                      //     : Column(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.center,
                                      //         children: [
                                      //           Icon(
                                      //             Icons.photo_camera,
                                      //             size: 54,
                                      //           ),
                                      //           Text(
                                      //             "upload photo!!",
                                      //             style:
                                      //                 TextStyle(fontSize: 7.5),
                                      //           )
                                      //         ],
                                      //       ),
                                    ),
                                    // backgroundColor: Color.fromARGB(255, 177, 104, 104),
                                  ),
                                ),
                              ),

                              // ElevatedButton(
                              //     style: ButtonStyle(
                              //         backgroundColor:
                              //             MaterialStateProperty.all(
                              //                 Colors.deepPurple)),
                              //     onPressed: () {
                              //       getImage().whenComplete(() {
                              //         uploadimg(_image!);
                              //       });
                              //     },
                              //     child: Text("upload profile pic")),
                              SizedBox(
                                height: 14,
                              )
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "  xyz@gmail.com",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(
                                    255, 24, 22, 22), // <-- Change this
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: Icon(Icons.email),
                            ),
                            controller: Get.find<SignupController>().emailcontroler,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return ('enter email');
                              } else if (!value.contains('@')) {
                                return ('enter valid email');
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "   password",
                                  hintStyle: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 15,
                                      color: Color.fromARGB(255, 192, 9, 9),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  suffix: Icon(Icons.remove_red_eye)),
                              onChanged: (value) {},
                              controller: Get.find<SignupController>().passcontroler,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  // Fluttertoast.showToast(
                                  //     msg: 'enter pass',
                                  //     gravity: ToastGravity.CENTER,
                                  //     backgroundColor:
                                  //         Color.fromARGB(255, 151, 157, 240));
                                  return ('enter password');
                                } else if (value.length < 4) {
                                  return ('password must be greater then 4 digits');
                                }
                              },
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "  Name",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(
                                    255, 24, 22, 22), // <-- Change this
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: Icon(Icons.person),
                            ),
                            controller: Get.find<SignupController>().namecontroler,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Fluttertoast.showToast(
                                //   msg: 'name?',
                                //   backgroundColor:
                                //       Color.fromARGB(255, 11, 12, 12),
                                //   fontSize: 12,
                                //   gravity: ToastGravity.CENTER,
                                // );
                                return ('name');
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "  contact number",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(
                                    255, 24, 22, 22), // <-- Change this
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: Icon(Icons.contact_phone),
                            ),
                            controller: Get.find<SignupController>().contactcontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Fluttertoast.showToast(
                                //   msg: 'enter contact num',
                                //   backgroundColor:
                                //       Color.fromARGB(255, 11, 12, 12),
                                //   fontSize: 12,
                                //   gravity: ToastGravity.CENTER,
                                // );
                                return ('contact num?');
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "  age",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(
                                    255, 24, 22, 22), // <-- Change this
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: Icon(Icons.rule),
                            ),
                            controller:Get.find<SignupController>().agecontroler,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Fluttertoast.showToast(
                                //   msg: 'age?',
                                //   backgroundColor:
                                //       Color.fromARGB(255, 11, 12, 12),
                                //   fontSize: 12,
                                //   gravity: ToastGravity.CENTER,
                                // );
                                return ('age?');
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(height: 12),
                          ElevatedButton(
                            child: Text("signup"),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {print("objecthhhhhhhhhhhhhhhh"); Get.find<SignupController>().signup();
                                // setState(() {
                                //   // email = emailcontroler.text;
                                //   // pass = passcontroler.text;
                                //   // name = namecontroler.text;
                                //   // contact = contactcontroler.text;
                                //   // age = agecontroler.text;
                                // });
                               // registration();
                              }
                              
                             // print();
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                primary: Colors.deepPurple),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //Get.to(login());
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                primary: Colors.deepPurple),
                          )
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
