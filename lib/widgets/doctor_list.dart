import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_multiselect.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

class DoctorListWidget extends StatelessWidget {
  const DoctorListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GFMultiSelect(
        items: const [
          'Dr. John Frell - Cardiology',
          'Dr. Sara Donny - Dermatology',
          'Dr. fredy McGreen - S. Operation',
          'Dr. Alan Pier - Eye'
        ],
        onSelect: (value) {
          print('selected $value');
        },
        dropdownTitleTileText: "Doctor's name",
        dropdownTitleTileHintTextStyle: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
        dropdownTitleTileColor: Theme.of(context).canvasColor,
        dropdownUnderlineBorder: BorderSide(
          color: Colors.transparent,
        ),
        dropdownTitleTileBorder:
            Border.all(color: Theme.of(context).iconTheme.color!, width: 1),
        expandedIcon: Icon(Icons.keyboard_arrow_down,
            color: Theme.of(context).iconTheme.color),
        collapsedIcon: Icon(
          Icons.keyboard_arrow_up,
          color: Theme.of(context).iconTheme.color,
        ),
        submitButton: Text('OK'),
        dropdownBgColor: Theme.of(context).canvasColor,
        buttonColor: Color(0xff27AE60),
        dropdownTitleTileTextStyle:
            TextStyle(fontSize: 14, color: Theme.of(context).iconTheme.color),
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.symmetric(horizontal: 16),
        type: GFCheckboxType.basic,
        activeBgColor: Color(0xff27AE60),
        listItemTextColor: Colors.white,
        color: Color(0xff383838),
        size: GFSize.SMALL,
      ),
    );
  }
}
