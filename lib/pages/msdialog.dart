import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> MessageDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          height: 350,
          width: 350,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: SvgPicture.asset('assets/Ellipsedialog.svg',
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 39,),
              Container(
                width: 281,
                height: 47,
                child: Text(
                  'Your messeage has been sent to our team, we will work on it',
                  style: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
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
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
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




































