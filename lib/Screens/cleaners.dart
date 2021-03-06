import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

// import '../component/header.dart';
import '../component/sidemenu.dart';

class CleanPage extends StatefulWidget {
  const CleanPage({Key? key}) : super(key: key);

  @override
  State<CleanPage> createState() => _CleanPageState();
}

class _CleanPageState extends State<CleanPage> {
  bool? isChecked = false;
  bool? check = false;

  final topic = cleanerClass(
      name: "Name",
      email: "Email",
      address: "Address",
      phoneNumber: "Phone Number");
  final cleanerList = [
    cleanerClass(
        name: "name1",
        email: "name1@gmail.com",
        address: "A street, Tokyo",
        phoneNumber: "0776756456"),
    cleanerClass(
        name: "name2",
        email: "name2@gmail.com",
        address: "A street, Tokyo",
        phoneNumber: "0776756456"),
    cleanerClass(
        name: "name3",
        email: "name3@gmail.com",
        address: "A street, Tokyo",
        phoneNumber: "0776756456"),
    cleanerClass(
        name: "name4",
        email: "name4@gmail.com",
        address: "A street, Tokyo",
        phoneNumber: "0776756456"),
  ];

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    makeMainCheckBox() {
      Color getColor(Set<MaterialState> states) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
        };
        if (states.any(interactiveStates.contains)) {
          return AppColor.mainColor;
        }
        return AppColor.mainColor;
      }

      return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      );
    }

    makeCheckBox() {
      Color getColor(Set<MaterialState> states) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
        };
        if (states.any(interactiveStates.contains)) {
          return AppColor.mainColor;
        }
        return AppColor.mainColor;
      }

      return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: check,
        onChanged: (bool? value) {
          setState(() {
            check = value!;
          });
        },
      );
    }

    CleanerDerails(var _name, var _email, var _address, var _phone) {
      double _x = 270.0;
      bool clicked = true;

      return Container(
        height: 50,
        width: 1080,

        // color: Colors.red,
        child: Row(
          children: [
            Container(
              child: makeCheckBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 120,
                child: Text(
                  _name,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              width: _x - 150,
            ),
            Container(
              width: 180,
              child: Text(
                _email,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              width: _x - 210,
            ),

            Container(
              width: 120,
              child: Text(
                _address,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              width: _x - 120,
            ),
            Container(
              width: 100,
              child: Text(
                _phone,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              width: _x - 200,
            ),
            //can change this as gesture detector
            Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    child: Icon(Icons.edit),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.red,
                  ),
                ),
              ]),
            ),
          ],
        ),
      );
    }

    //pop up message
    Future<void> openDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        child: Text(
                          "Add Cleaner",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Name',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Email"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Address"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Address',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("Phone Number"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 35,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Phone Number',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xFF4B506D).withOpacity(0.4)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 63,
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColor.mainColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return Container(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // HeaderBar(value: 'Cleaners',),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //buttons
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30, right: 22),
                  child: GestureDetector(
                    onTap: openDialog,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.mainColor,
                      ),
                      // ignore: sort_child_properties_last
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 25,
                            color: Colors.white,
                          ),
                          Text(
                            '  Add Cleaner',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          //test
                        ],
                      ),
                      height: 50,
                      width: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 30, right: 22),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF94F4F),
                    ),
                    height: 50,
                    width: 200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete_forever,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          '  Remove All',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //*******************
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 22),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0.5, 1),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width - 350,
                height: MediaQuery.of(context).size.height - 220,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: 1000,
                                height: 300,
                                child: ListView(
                                  children: [
                                    ListTile(
                                      leading: Checkbox(
                                        hoverColor:Colors.green.shade100,
                                        focusColor: AppColor.mainColor,
                                        activeColor: AppColor.mainColor,
                                        value: topic.checkValue,
                                        onChanged: (value) {
                                          final newVal = !topic.checkValue;
                                          setState(() {
                                            topic.checkValue =
                                                newVal;
                                            cleanerList.forEach((element) {
                                              element.checkValue = newVal;
                                            });
                                          });
                                        },
                                      ),
                                      title: Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Name',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200.0,
                                            ),
                                            Container(
                                              child: Text(
                                                'Email',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200.0,
                                            ),
                                            Container(
                                              child: Text(
                                                'Address',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200.0,
                                            ),
                                            Container(
                                              child: Text(
                                                'Phone Number',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                    ...cleanerList.map((item) => 
                                    
                                    ListTile(
                                      leading: Checkbox(
                                        hoverColor: Colors.green.shade100,
                                        focusColor: AppColor.mainColor,
                                        activeColor: AppColor.mainColor,
                                        value: item.checkValue,
                                        onChanged: (value) {
                                          setState(() {
                                            item.checkValue =
                                                !item.checkValue;
                                          });
                                        },
                                      ),
                                      title: Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                item.name,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 160.0,
                                            ),
                                            Container(
                                              child: Text(
                                                item.email,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 120.0,
                                            ),
                                            Container(
                                              child: Text(
                                                item.address,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 160.0,
                                            ),
                                            Container(
                                              child: Text(
                                                item.phoneNumber,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    ).toList()
                                  ],
                                ))

                            // // SizedBox(
                            //   height: 20,
                            // ),
                            // CleanerDerails('name2', 'name2@gmail.com',
                            //     'A street, Tokyo', '+953465367'),
                            // CleanerDerails('name1', 'name2@gmail.com',
                            //     'A street, Tokyo', '+954567856'),
                            // CleanerDerails('name3', 'name2@gmail.com',
                            //     'A street, Tokyo', '+954556345'),
                            // CleanerDerails('name1', 'name2@gmail.com',
                            //     'A street, Tokyo', '+954534234'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            //****************
          ],
        ),
      ),
    );
  }
}

//cleaner class
class cleanerClass {
  late String name;
  late String email;
  late String address;
  late String phoneNumber;
  late bool checkValue;

  cleanerClass(
      {required this.name,
      required this.email,
      required this.address,
      required this.phoneNumber,
      this.checkValue = false});
}
