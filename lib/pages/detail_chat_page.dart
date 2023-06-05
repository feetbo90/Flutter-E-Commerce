import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSize myHeader() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(),
      );
    }

    PreferredSize header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes8.png',
                width: 54,
              ),
              // Image.network(
              //   widget.product.galleries[0].url,
              //   width: 54,
              // ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // widget.product.name,
                    'CORAZON',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    // '\$${widget.product.price}',
                    '\$50',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // setState(() {
                //   widget.product = UninitializedProductModel();
                // });
              },
              child: Image.asset(
                'assets/button_close.png',
                width: 22,
              ),
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // widget.product is UninitializedProductModel
            // ? SizedBox()
            // :
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        // controller: messageController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  // handleAddMessage,
                  child: Image.asset(
                    'assets/button_send.png',
                    width: 45,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      // return StreamBuilder<List<MessageModel>>(
      //     stream: MessageService()
      //         .getMessagesByUserId(userId: authProvider.user.id),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
              isSender: true,
              text: 'Hi, This item is still available',
              hasProduct: true),
          ChatBubble(
              isSender: false, text: 'Yeah, sure this item is available'),
        ],
        // snapshot.data
        //     .map((MessageModel message) => ChatBubble(
        //           isSender: message.isFromUser,
        //           text: message.message,
        //           product: message.product,
        //         ))
        //     .toList(),
      );
      // } else {
      // return Center(
      //     child: CircularProgressIndicator(),
      //   );
      // }
      // });
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
