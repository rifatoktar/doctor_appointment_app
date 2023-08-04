import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FileMessage extends StatelessWidget {
  final String time;
  final String fileName;
  const FileMessage({super.key, required this.time, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft),
          child: Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width * 0.74,
            padding: EdgeInsets.only(top: 5, left: 10),
            decoration: BoxDecoration(color: Color(0xffE74C3C)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/download.svg",
                  height: 15,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                SizedBox(width: 5,),
                Text("${fileName}.pdf",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text(
                  ' • ',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  '1 mb',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
            margin: EdgeInsets.only(right: 16),
            child: Text(
              time,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            )),
      ]),
    );
  }
}
