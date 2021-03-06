import 'package:contacts_app/bloc/Messages/messages.bloc.dart';
import 'package:contacts_app/bloc/Messages/messages.state.dart';
import 'package:contacts_app/repositories/messages.repo.dart';

import 'bloc/contacts/contact.bloc.dart';
import 'bloc/contacts/contact.state.dart';
import 'package:contacts_app/repositories/contact.repo.dart';
import 'package:contacts_app/ui/pages/contacts/contact.page.dart';
import 'package:contacts_app/ui/pages/messages/messages.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'enums/enums.dart';

void main() {
  GetIt.instance.registerLazySingleton(() => new ContactsRepository());
  GetIt.instance.registerLazySingleton(() => new MessageRepo());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactsBloc(
            initialState: ContactsState(
                contacts: [],
                errorMessage: '',
                requestState: RequestState.NONE),
            contactsRepository: GetIt.instance<ContactsRepository>(),
          ),
        ),
        BlocProvider(
            create: (context) => MessageBloc(
                initialState: MessagesState.initialState(),
                messageRepo: GetIt.instance<MessageRepo>()))
      ],
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Color.fromRGBO(0,230,118,4)),
        routes: {
          '/contacts': (context) => ContactsPage(),
          '/messages': (context) => MessagesPage(),
        },
        initialRoute: '/contacts',
      ),
    );
  }
}
