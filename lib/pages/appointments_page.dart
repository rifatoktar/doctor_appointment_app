import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../theme/dark_theme_provider.dart';
import '../widgets/calendar.dart';
import '../widgets/doctor_card.dart';
import '../widgets/doctor_list.dart';
import '../widgets/time_range.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  bool light1 = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Icon(
          Icons.check,
          color: Colors.white,
        );
      }
      return Icon(Icons.close);
    },
  );

    PopupMenuItem _buildPopupMenuItem(String title, String iconData, context) {
  return PopupMenuItem(
    child: Row(
      children: [
        SvgPicture.asset(
          iconData,
          height: 20,
          width: 20,
          fit: BoxFit.scaleDown,
          colorFilter:
              ColorFilter.mode(Theme.of(context).cardColor, BlendMode.srcIn),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    _settings() {
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
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
                          "assets/icons/settings.svg",
                          height: 20,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).iconTheme.color!,
                              BlendMode.srcIn),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Settings',
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Dark Mode',
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                            Spacer(),
                        Switch(
                            thumbIcon: thumbIcon,
                            value: themeChange.darkTheme,
                            onChanged: (bool? value) {
                              themeChange.darkTheme = value!;
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(onTap: (){}, leading: Text('Log out',
                          style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w600)), trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color,),),
                ]),
          );
        },
      );
    }

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text('Appointments',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
          actions: [
            PopupMenuButton(
              color: Theme.of(context).iconTheme.color,
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 24,
                width: 24,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).iconTheme.color!, BlendMode.srcIn),
              ),
              itemBuilder: (ctx) => [
                _buildPopupMenuItem(
                    'Profile', "assets/icons/user2.svg", context),
                _buildPopupMenuItem(
                    'Settings', "assets/icons/settings.svg", _settings()),
              ],
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
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'You can create one or cancel that you have already',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text('created appointments',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
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
                Divider(
                  color: Theme.of(context).iconTheme.color!.withOpacity(.7),
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(children: [
                    Icon(
                      Icons.add,
                      color: Theme.of(context).iconTheme.color,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Create one',
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
               DoctorListWidget(),
                SizedBox(
                  height: 10,
                ),
                CalendarWidget(),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                   TimeRangeWidget(),
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
                        onPressed: () {},
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(color: Color(0xff27AE60)),
                          child: Center(
                            child: Text(
                              'Create one',
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(children: [
                          SvgPicture.asset(
                            "assets/icons/notification.svg",
                            width: 20,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).iconTheme.color!,
                                BlendMode.srcIn),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Coming up',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff27AE60)),
                            child: Center(
                                child: Text(
                              '5',
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).iconTheme.color,
                            size: 20,
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DoctorCardWidget(doctorImage: 'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80', doctorName: 'Dr. John Frell', doctorDepartment: 'Cardiology', date: '08/18/2023', time: '13.30'),
                    SizedBox(height: 8,),
                     DoctorCardWidget(doctorImage: 'https://images.unsplash.com/photo-1594824476967-48c8b964273f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80', doctorName: 'Dr. Sara Donny', doctorDepartment: 'Dermatology', date: '08/21/2023', time: '14.30'),
                      SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
