import 'package:flutter/material.dart';

class TimeRangeWidget extends StatefulWidget {
  const TimeRangeWidget({super.key});

  @override
  State<TimeRangeWidget> createState() => _TimeRangeWidgetState();
}

class _TimeRangeWidgetState extends State<TimeRangeWidget> {
  @override
  Widget build(BuildContext context) {
    RangeValues _values = RangeValues(8, 17);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: <Widget>[
              Text(
                "Time range could be",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Row(children: [
                Text(
                  _values.start.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  ' - ',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  _values.end.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ]),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RangeSlider(
            activeColor: Color(0xff27AE60),
            inactiveColor: Theme.of(context).canvasColor,
            values: _values,
            min: 8,
            max: 17,
            onChanged: (RangeValues values) {
              setState(() {
                if (values.end - values.start >= 20) {
                  _values = values;
                } else {
                  if (_values.start == values.start) {
                    _values = RangeValues(_values.start, _values.start + 20);
                  } else {
                    _values = RangeValues(_values.end - 20, _values.end);
                  }
                }
              });
            }),
      ],
    );
  }
}
