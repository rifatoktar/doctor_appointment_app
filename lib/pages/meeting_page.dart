import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/file_message.dart';
import '../widgets/received_message.dart';
import '../widgets/send_message.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {

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

  final TextEditingController _messageController = TextEditingController();
  _menu() {
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
        title: Text('Meeting',
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
                    'Report bug', "assets/icons/bug.svg", context),
                _buildPopupMenuItem(
                    'Report doctor', "assets/icons/user.svg", context),
                _buildPopupMenuItem(
                    'Upload files', "assets/icons/attach.svg", context),
              ],
            )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1594824476967-48c8b964273f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Sara Donny',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
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
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).iconTheme.color,
                size: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "You can meet the doctor right now. However you have to wait for meeting time range that you set up meeting time range before ",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
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
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: ListView(children: const [
                SendMessage(
                  time: '14.30',
                  message: 'Hello, Mrs. Donny',
                ),
                SizedBox(
                  height: 8,
                ),
                ReceivedMessage(time: '14.30', message: 'Hello, Mr. Doe'),
                SizedBox(
                  height: 8,
                ),
                SendMessage(
                  time: '14.31',
                  message: 'I have an issue about my foots',
                ),
                SizedBox(
                  height: 8,
                ),
                ReceivedMessage(
                    time: '14.32', message: 'What is the problem ?'),
                SizedBox(
                  height: 8,
                ),
                SendMessage(
                  time: '14.31',
                  message: 'I have an issue about my foots',
                ),
                SizedBox(
                  height: 8,
                ),
                ReceivedMessage(
                    time: '14.32', message: 'What is the problem ?'),
                SizedBox(
                  height: 8,
                ),
                SendMessage(
                  time: '14.32',
                  message: 'My foots getting itch!',
                ),
                SizedBox(
                  height: 8,
                ),
                FileMessage(time: '14.35', fileName: 'Medicine'),
                SizedBox(
                  height: 8,
                ),
                SendMessage(
                  time: '14.36',
                  message: 'Thank you Dr. Donny!',
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width * 0.74,
                    padding: EdgeInsets.only(left: 16),
                    decoration:
                        BoxDecoration(color: Theme.of(context).canvasColor),
                    child: Center(
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message...',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                        autofocus: false,
                        maxLines: null,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/send.svg",
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).iconTheme.color!,
                              BlendMode.srcIn),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}