import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  final String time;
  final String message;
  const SendMessage({super.key, required this.time, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Container(
            margin: EdgeInsets.only(left: 16),
            child: Text(
              time,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            )),
        SizedBox(
          width: 20,
        ),
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
            decoration: BoxDecoration(color: Theme.of(context).canvasColor),
            child: Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ]),
    );
  }
}
