import 'package:flutter/material.dart';
import 'package:sprace/component/colors.dart';

import '../component/header.dart';
import '../component/sidemenu.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeaderBar(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 50,right: 22),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.mainColor,

                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_circle,size: 25,color: Colors.white,),
                              Text('  Add Service', style: TextStyle(color: Colors.white, fontSize: 20),)
                            ],
                          ),
                          height: 50,
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0,top: 50,right: 22),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF94F4F),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete_forever ,size: 25,color: Colors.white,),
                              Text('  Remove All', style: TextStyle(color: Colors.white, fontSize: 20),)
                            ],
                          ),
                          height: 50,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 22),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(10),
                          boxShadow:[
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
                      child: Padding(
                        padding: const EdgeInsets.only(top:10 ,left:7 , right:7 ,bottom:10 ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
                                
                            ),
                            Cleaner('Women', 'Washroom cleaning', 5000)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );


  }
}


Cleaner (var _gender, var _type, var _price) {
  return Container(
    decoration: BoxDecoration(
       color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow:[
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), //color of shadow
          spreadRadius: 5,
          blurRadius: 10,
          offset: Offset(0.5, 1),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(60)
          ),
          height: 190,
          width: 165,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width: 145,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img_2.png"),
                    fit: BoxFit.cover,
                  ),

                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(_gender,style: TextStyle(
                  fontSize: 25, color: Color(0xFF000000)
                ),),
              ),
              Container(
                  child: Text('Cleaner',style: TextStyle(
                      fontSize: 40, color: Color(0xFF000000)
                  ),)
              ),
              Container(
                child: Text(_type,style: TextStyle(
                    fontSize: 15, color: Color(0xFF000000)
                ),),
              ),
              Container(
                child: Text('Rs '+ _price.toString(),style: TextStyle(
                    fontSize: 20, color: Colors.red
                ),),
              ),
            ],
          ),
        )
      ],
    ),
    width: 440,
    height: 240,
  );
}