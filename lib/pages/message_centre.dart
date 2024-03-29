import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';
import 'msdialog.dart';

class MessageCentre extends StatefulWidget {
  const MessageCentre({super.key});

  @override
  State<MessageCentre> createState() => _MessageCentreState();
}

class _MessageCentreState extends State<MessageCentre> {
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
                      'Message Centre',
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
          padding: EdgeInsets.only(left: 10.w, top: 40.h, right: 10.w,bottom: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'Send a message',
                style: TextStyle(
                  color: Color(0xff606060),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 148.h,
              width: 300.w,
              padding: EdgeInsets.only(left: 46.w,),
              child: TextField(
                maxLines: null, // Set to null for an unlimited number of lines
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Write here....',
                  hintStyle: TextStyle(
                      fontSize: 14.0, // Set the desired font size
                      fontWeight: FontWeight.normal // Set the desired font weight
                  ), // Customize label color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        6.0), // Set rounded corners
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .blue), // Customize border color when focused
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),),
        bottomSheet: Container(
          width: double.maxFinite,
          height: 50.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.w,
                height:40.h,
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
                      MessageDialog(context);
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
