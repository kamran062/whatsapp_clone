import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.25,
      height: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
child: Icon(Icons.search,size: 20 ,),
          ),hintStyle: TextStyle(fontSize: 14),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          ),
          contentPadding: EdgeInsets.all(10)
        ),
      ),
    );
  }
}
