import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  List<Contact> contacts;
  ContactsList({this.contacts});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        separatorBuilder: (context,index)=>Divider(height: 5,color: Color.fromRGBO(128,216,255,4),),
          itemCount: contacts.length,
          itemBuilder: (context,index) {
            return ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/messages',arguments: contacts[index]);
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                      child: Image.network("${contacts[index].profile}"),
                      backgroundColor: Color.fromRGBO(128,216,255,4),
                      maxRadius: 35,
                    ),
                    SizedBox(width: 20,),
                    Text("${contacts[index].name}",)]),
                  CircleAvatar(
                    child: Text('${contacts[index].score}'),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
