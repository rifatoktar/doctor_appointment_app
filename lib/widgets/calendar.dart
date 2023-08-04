import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //[selectedDate] the new date selected.
            },
            activeColor: Color(0xff27AE60),
            headerProps: EasyHeaderProps(
                monthPickerType: MonthPickerType.switcher,
                monthStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                selectedDateFormat: SelectedDateFormat.fullDateDayAsStrMY,
                selectedDateStyle: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
            dayProps: EasyDayProps(
              borderColor: Colors.transparent,
              todayHighlightColor: Color(0xff27AE60),
              activeBorderRadius: 0,
              inactiveBorderRadius: 0,
              inactiveDayNumStyle: Theme.of(context).textTheme.headlineMedium!,
              activeDayNumStyle: Theme.of(context).textTheme.headlineMedium!,
              inactiveDayDecoration:
                  BoxDecoration(color: Theme.of(context).canvasColor),
            ),
            timeLineProps: EasyTimeLineProps(
              hPadding: 0,
              separatorPadding: 16,
            ),
          ),
        ],
      ),
    );
  }
}
