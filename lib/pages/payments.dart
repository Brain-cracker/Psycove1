import 'package:atman_2/Psycologist_nfo/pay_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

class MyPayment extends StatefulWidget {
  const MyPayment({super.key});

  @override
  State<MyPayment> createState() => _MyPaymentState();
}

class _MyPaymentState extends State<MyPayment> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            width: double.infinity,
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors().main,
              borderRadius: BorderRadius.only(
                // Radius for the bottom-right corner
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 10.h, right: 20.w),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                      width: 24.h,
                      height: 24.h,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Handle button press
                    },
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      "Payment's",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.81,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 30.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        body:  Container(
          padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 10.w,),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    "Upcoming payment's",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w,right: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xffD3A3F1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Psychologist session fee",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "21 December,2023",
                            style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap:  () {
                         PayDialog(context);
                                },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffD3A3F1)
                          ),
                          child: Center(child: Text("Pay now",style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),)),
            
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height:67.h,),
                Container(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    "Accomplished payment's",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w,right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffD3A3F1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Psychologist session fee",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "21 December,2023",
                            style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffBABABA)
                          ),
                          child: Center(child: Text("Paid",style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),)),
            
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w,right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffD3A3F1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Psychologist session fee",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "21 December,2023",
                            style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffBABABA)
                          ),
                          child: Center(child: Text("Paid",style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),)),
            
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w,right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffD3A3F1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Psychologist session fee",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "21 December,2023",
                            style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffBABABA)
                          ),
                          child: Center(child: Text("Paid",style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),)),
            
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w,right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffD3A3F1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Psychologist session fee",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "21 December,2023",
                            style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffBABABA)
                          ),
                          child: Center(child: Text("Paid",style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),),),
            
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),),
      ),
    );
  }
}
