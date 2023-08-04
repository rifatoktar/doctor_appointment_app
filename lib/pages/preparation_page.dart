import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'meeting_page.dart';

class PreparationPage extends StatefulWidget {
  const PreparationPage({super.key});

  @override
  State<PreparationPage> createState() => _PreparationPageState();
}

class _PreparationPageState extends State<PreparationPage> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).iconTheme.color!;
    }
    return Color(0xff27AE60);
  }

  _calendar() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Theme.of(context).cardColor),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 3,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Theme.of(context).iconTheme.color,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/check.svg",
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).iconTheme.color!,
                            BlendMode.srcIn),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Preparation settings',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Theme.of(context).iconTheme.color,
                          )),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                          'You have a meeting with Dr. Sara Donny between 14.30 - 15.00. If you want to cancel appointment, you can right now. However you can not cancel during the meeting',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                ),
                 SizedBox(
                  height: 20,
                ),
                 Divider(
                  color: Theme.of(context).iconTheme.color!.withOpacity(.7),
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                 SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {},
                  leading: Text('Cancel appointment',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Text('Report appointment',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Text('Report doctor',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Text('Report bug',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
               
              ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).iconTheme.color,
            )),
        title: Text('Preparation',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
            onPressed: () {
              _calendar();
            },
            icon: SvgPicture.asset(
              "assets/icons/calendar.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!, BlendMode.srcIn),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                height: 180,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1594824476967-48c8b964273f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'))),
              ),
              SizedBox(
                height: 20,
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
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Sara Donny',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dermatology',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff27EA60)),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).iconTheme.color,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Row(children: [
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    height: 20,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).iconTheme.color!, BlendMode.srcIn),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rules',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "If you don’t obey meeting rules, you won't meet anymore with the doctor and going to suspanded for",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text('a while entire app',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          child: Text('Learn more',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2980B9))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "If you are prepared for the meeting, you have to wait for the meeting time. Otherwise, the doctor can’t",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text('reach your messages',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          child: Text('Learn more',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2980B9))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.only(left: 16),
                color: Theme.of(context).canvasColor,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/comment.svg',
                      height: 20,
                      colorFilter:
                          ColorFilter.mode(Color(0xff27AE60), BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Please be respectful and don't mention another subject",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.only(left: 16),
                color: Theme.of(context).canvasColor,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/user.svg',
                      height: 20,
                      colorFilter:
                          ColorFilter.mode(Color(0xff27AE60), BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Please don't mention another patient in the meeting",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.only(left: 16),
                color: Theme.of(context).canvasColor,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/info.svg',
                      height: 20,
                      colorFilter:
                          ColorFilter.mode(Color(0xff27AE60), BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Please avoid giving private information about yourself",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          'I understand and accept',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          child: Text('Terms',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2980B9))),
                        ),
                        Text(
                          'and',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          child: Text('Policies',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2980B9))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MeetingPage()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(color: Color(0xff27AE60)),
                    child: Center(
                      child: Text(
                        'Start meeting',
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ]),
      )),
    );
  }
}
