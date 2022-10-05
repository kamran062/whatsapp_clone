import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          ),
        SizedBox(width:   MediaQuery.of(context).size.width*0.01,),
          Text(info[0]['name'].toString(),style: const TextStyle(fontSize: 18),) ,
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey)),
        ],
      ),
    );
  }
}
