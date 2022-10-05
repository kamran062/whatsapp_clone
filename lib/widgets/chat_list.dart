import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/sender_messag_card.dart';

import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index){
      if(messages[index]['isMe']==true){
       return MyMessageCard(date: messages[index]['time'].toString(), message: messages[index]['text'].toString(),);
      }
     return SenderMessageCard(date: messages[index]['time'].toString(), message: messages[index]['text'].toString(),);
    });
  }
}
