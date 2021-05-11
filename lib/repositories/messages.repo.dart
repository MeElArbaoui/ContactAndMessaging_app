import 'dart:math';

import 'package:contacts_app/model/messages.model.dart';


class MessageRepo{
  int messageCount = 4;
  Map<int,Message> messages = {
    1 : Message(id: 1,contactID : 1,date: DateTime.now(),content: 'Hello Mehdi',type: 'received',selected: false),
    2 : Message(id: 2,contactID : 1,date: DateTime.now(),content: 'Hey',type: 'sent',selected: false),
    3 : Message(id: 3,contactID : 1,date: DateTime.now(),content: 'How are you doing?',type: 'received',selected: false),
    4 : Message(id: 4,contactID : 1,date: DateTime.now(),content: 'Im fine! and you?',type: 'sent',selected: false),
    5 : Message(id: 5,contactID : 1,date: DateTime.now(),content: 'Im good.',type: 'received',selected: false),
    6 : Message(id: 6,contactID : 1,date: DateTime.now(),content: 'I wanna know something',type: 'received',selected: false),
    7 : Message(id: 7,contactID : 1,date: DateTime.now(),content: 'Is the app your working on wil be on app store? ',type: 'received',selected: false),
    8 : Message(id: 8,contactID : 1,date: DateTime.now(),content: 'Yes! Im using flutter so when I finish this app it will be on google and app store',type: 'sent',selected: false),
    9 : Message(id: 9,contactID : 1,date: DateTime.now(),content: 'Oh nice! when are you to finish it?',type: 'received',selected: false),
    10 : Message(id: 10,contactID : 2,date: DateTime.now(),content: 'Seen',type: 'received',selected: false),
    11 : Message(id:11,contactID : 2,date: DateTime.now(),content: 'Okay ',type: 'sent',selected: false),

  };

  MessageRepo(){
   this.messageCount=messages.length;
  }
  Future allMessages() async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      return messages.values.toList();
    }
    else{
      throw new Exception('Internet Error');
    }
  }

  Future<List<Message>> messageByContact(int contactID) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      return messages.values.toList().where((element) => element.contactID==contactID).toList();
    }
    else{
      throw new Exception('Internet Error');
    }
  }

  Future<Message> addNewMessage(Message message) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      message.id=++messageCount;
      messages[message.id]=message;
      return message;
    }
    else{
      throw new Exception('Internet Error');
    }
  }


  Future<void> deleteMessage(Message message) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      messages.remove(message.id);
    }
    else{
      throw new Exception('Internet Error');
    }
  }
}