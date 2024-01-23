import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Success_dialog.dart';

Future<void> PayDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          height: 300.h,
          width: 350.w,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/coin.svg',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 25.h,),
              Container(
                child: Text(
                  '@1800',
                  style: TextStyle(
                    color: AppColors().H1,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 12.h,),
              Container(
                width: 320.w,
                height: 60.h,
                child: Text(
                  'Pay now to get connected with your desired psychologist and get therapy by them',
                  style: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Container(
                width: 116,
                height: 43,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffD3A3F1), // Text color
                    elevation: 5, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    SuccessDialog(context);

                  },
                  child: Text(
                    'Pay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}




































