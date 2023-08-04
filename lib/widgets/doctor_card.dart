import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/preparation_page.dart';

class DoctorCardWidget extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorDepartment;
  final String date;
  final String time;
  const DoctorCardWidget(
      {super.key,
      required this.doctorImage,
      required this.doctorName,
      required this.doctorDepartment,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft),
      onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PreparationPage()),
  );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.only(left: 16),
        height: 70,
        color: Theme.of(context).canvasColor,
        child: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(doctorImage),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: EdgeInsets.only(top: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      doctorName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      ' • ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      doctorDepartment,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(date,
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff27AE60))),
                    Text(' - ',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff27AE60))),
                    Text(time,
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff27AE60))),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
