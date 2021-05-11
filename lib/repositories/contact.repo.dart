import 'dart:math';

import 'package:contacts_app/model/contact.model.dart';


class ContactsRepository{
  Map<int,Contact> contacts={
    1:Contact(id:1,name:"EL MEHDI",profile:"https://cdn1.iconfinder.com/data/icons/user-pictures/100/supportmale-512.png",type: "Student",score:2),
    2:Contact(id:2,name:"RAMI",profile:"https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png",type: "Developer",score:8),
    3:Contact(id:3,name:"MAROINE",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/boy_person_avatar_kid-512.png",type: "Student",score:19),
    4:Contact(id:4,name:"AMINE",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/breaking_bad_chemisrty_avatar_heisenberg-512.png",type: "Developer",score:2),
    5:Contact(id:5,name:"OMAR",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/afro_man_male_avatar-512.png",type: "Developer",score:10),
    6:Contact(id:6,name:"MOUAD",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/halloween_jason_friday_movie-512.png",type: "Student",score:6),
    7:Contact(id:7,name:"AYOUB",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png",type: "Student",score:4),
    8:Contact(id:8,name:"OTHMANE",profile:"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/chaplin_comedy_actor_man-512.png",type: "Student",score:15),


  };

  Future<List<Contact>> allContatcs() async {
    // var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      return contacts.values.toList();
    }else{
      throw new Exception("Internet Error");
    }
  }
  Future<List<Contact>> contactsByType(String type) async {
    // var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>3){
      return contacts.values.toList().where((element) => element.type == type).toList();
    }else{
      throw new Exception("Internet Error");
    }
  }
}