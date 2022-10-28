import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';
import '../controllers/chat_controller.dart';

class DetailChatView extends GetView<ChatController> {
  DetailChatView({Key? key}) : super(key: key);
  final TextEditingController messageController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        toolbarHeight: getProperHeight(100),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left_outlined),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                'assets/images/doctor-sample.png',
              ),
            ),
            SizedBox(
              width: getProperWidht(18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Mim Akhter',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Online',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          chatInput(),
        ],
      )),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: getProperWidht(150),
                    minHeight: getProperWidht(45),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: getProperWidht(10),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: messageController,
                          style: primaryTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Tulis Pesan...',
                            hintStyle: subtitleTextStyle,
                          ),
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.send, color: kPrimaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
