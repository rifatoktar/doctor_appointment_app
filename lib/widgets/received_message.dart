import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceivedMessage extends StatelessWidget {
  final String time;
  final String message;
  const ReceivedMessage({super.key, required this.time, required this.message});

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
            padding: EdgeInsets.only(top: 15, left: 10),
            decoration: BoxDecoration(color: Color(0xff258A4F)),
            child: Text(
              message,
              style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
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