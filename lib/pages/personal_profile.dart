import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
      appBar:  PreferredSize(
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
                      'assets/backA.svg', // Replace with your SVG file path
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
                      'Personal Profile',
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
        body: Container(
          padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 12.h,bottom: 75.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Your Name',
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
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                fontSize: 14.0, // Set the desired font size
                                fontWeight: FontWeight
                                    .normal // Set the desired font weight
                                ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                color: Color(0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Gender',
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
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: FormBuilderDropdown(
                                name: 'gender',
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffD3A3F1),width: 5),
                                    borderRadius: BorderRadius.circular(6.0),
                                    // Set rounded corners
                                  ),
                                ),
                                items: ['Male', 'Female', 'Other'].map((gender) => DropdownMenuItem(
                                          value: gender,
                                          child: Text(gender),
                                        ),).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Profession',
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
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: ('exmp: Student'),
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, // Set the desired font size
                                      fontWeight: FontWeight.normal // Set the desired font weight
                                      ),
                                  // Customize label color
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Color(0xffD3A3F1), // Regular border color
                                  width: 5.0, // Regular border thickness
                                ),
                              ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Language Spoken',
                                style: TextStyle(
                                  color: Color(0xff606060),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: ('exmp: Hindi and English'),
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, // Set the desired font size
                                      fontWeight: FontWeight.normal // Set the desired font weight
                                      ), // Customize label color
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Date of Birth',
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
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: FormBuilderDateTimePicker(
                                name: 'dob',
                                inputType: InputType.date,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                    // Set rounded corners
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Bio Data',
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
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, // Set the desired font size
                                      fontWeight: FontWeight
                                          .normal // Set the desired font weight
                                      ),
                                   // Customize label color
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Location',
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
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(left: 15.w,),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, // Set the desired font size
                                      fontWeight: FontWeight
                                          .normal // Set the desired font weight
                                      ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          width: double.maxFinite,
          height: 50.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffD3A3F1), // Text color
                    elevation: 2, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Update Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal
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
