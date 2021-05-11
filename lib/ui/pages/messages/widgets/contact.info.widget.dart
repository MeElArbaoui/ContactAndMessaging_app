import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter/material.dart';

class ContactInfoWidget extends StatelessWidget {
  Contact contact;
  ContactInfoWidget(this.contact);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.network("${contact.profile}"),
            backgroundColor: Color.fromRGBO(33,150,243,4),
            maxRadius: 25,
          ),
          SizedBox(
            width:20,
          ),
          Text('${contact.name}', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      ),
      decoration: BoxDecoration(
          gradient:
          LinearGradient(colors: [Colors.lightBlue, Colors.white])),
    );
  }
}
