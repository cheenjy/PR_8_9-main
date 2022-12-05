import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/User.dart';

import 'package:flutter_application_1/screens/UserDetailScreen.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
  User(
      age: 19,
      firstName: 'Grisha',
      lastName: 'Smirnov',
      phone: '+79140007838',
      email: 'grishaervinka@mail.ru',
      avatar:
          'https://sun2.mts-irkutsk.userapi.com/impg/MrJ2dUq6W4BTsYAgoc-HWLjkRT2xbigUX91KRA/goSQITtczRE.jpg?size=320x319&quality=95&sign=bd4262cd46c67e9d05ef902b153330ec&c_uniq_tag=tss5A7PNvvOSlMYW5knuGjYNpm5rq7ajUoXbx3tb4xQ&type=album'),
  User(
      age: 20,
      firstName: 'Ashot',
      lastName: 'Gasparyan',
      phone: '+79149585551',
      email: 'ashotervinka@mail.ru',
      avatar: ''),
  User(
      age: 22,
      firstName: 'Nikolay',
      lastName: 'Bessonov',
      phone: '+79641251695',
      email: 'kolyaervinka@mail.ru',
      avatar: ''),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: usersList[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: usersList[index].avatar == ''
                        ? Image.network(
                            'https://media.tproger.ru/uploads/2017/04/tp_circle_big.png')
                        : Image.network(usersList[index].avatar,
                            fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Имя: ' + usersList[index].firstName,
                          textAlign: TextAlign.left,
                        ),
                        Text('Фамилия: ' + usersList[index].lastName),
                        Text('Возраст: ' + usersList[index].age.toString()),
                        Text('Телефон: ' + usersList[index].phone),
                        Text('Email: ' + usersList[index].email),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
