import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.milkyWhite,
      ),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            spacing.heightB(70.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              color: colors.white,
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(
                    assets.igProfile1,
                  )),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sandeep Kanth',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Active now',
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            spacing.heightB(10.h),
            SizedBox(
              height: 611.h,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      children: [
                        // Chat Bubbles (User's Message)
                        ChatBubble(
                          message: 'Hello! Sandeep Kanth',
                          isMe: true,
                          time: '09:25 AM',
                        ),
                        ChatBubble(
                          message: 'Hello! Daniel How are you?',
                          isMe: false,
                          time: '09:25 AM',
                        ),
                        ChatBubble(
                          message: 'You did your job well!',
                          isMe: true,
                          time: '09:25 AM',
                        ),
                        ChatBubble(
                          message:
                              'Have a great working week!!\nHope you like it',
                          isMe: false,
                          time: '09:25 AM',
                        ),
                        // Voice Message Bubble
                        VoiceMessageBubble(
                          time: '09:25 AM',
                        ),
                      ],
                    ),
                  ),
                  // Message Input Field
                  ChatInputField(),

                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom * 0.01,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Chat Bubble Widget
class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String time;

  ChatBubble({required this.message, required this.isMe, required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: isMe ? colors.primary : colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(
                color: isMe ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              time,
              style: TextStyle(
                  color: isMe ? Colors.white : Colors.black, fontSize: 10.sp),
            ),
          ],
        ),
      ),
    );
  }
}

// Voice Message Bubble
class VoiceMessageBubble extends StatelessWidget {
  final String time;
  final bool isMe;

  VoiceMessageBubble({required this.time, this.isMe = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: 330.w,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: isMe ? colors.primary : colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Icon(Icons.play_circle_outline,
                color: isMe ? colors.white : Colors.blue),
            SizedBox(width: 5),
            Container(
              width: 200.w,
              child: LinearProgressIndicator(
                value: 0.5,
                backgroundColor: isMe
                    ? colors.white.withOpacity(0.4)
                    : colors.greyText.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(
                    isMe ? colors.white : colors.primary),
              ),
            ),
            SizedBox(width: 10),
            Text(
              time,
              style: TextStyle(
                color: isMe ? colors.white : colors.black,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Input Field
class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, -1),
            blurRadius: 5,
          )
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.attach_file, color: Colors.grey),
          SizedBox(width: 10),
          Container(
            width: 245.79.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
                color: colors.milkyWhite,
                borderRadius: BorderRadius.circular(12.r)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Write your message",
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.file_copy_outlined,
                    color: Colors.grey,
                  )),
            ),
          ),
          spacing.widthB(20.w),
          Icon(Icons.camera_alt_outlined, color: Colors.grey),
          spacing.widthB(10.w),
          Icon(Icons.mic_none_sharp, color: Colors.grey),
        ],
      ),
    );
  }
}
