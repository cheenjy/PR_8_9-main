import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/User.dart';

class UserDetailScreen extends StatefulWidget {
  final User user;
  const UserDetailScreen({required this.user, Key? key}) : super(key: key);

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.firstName + '' + widget.user.lastName),
      ),
      body: Column(
        children: [
          widget.user.avatar == ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          'https://media.tproger.ru/uploads/2017/04/tp_circle_big.png',
                          fit: BoxFit.contain),
                    ),
                  ],
                )
              : Container(
                  child: Image.network(widget.user.avatar),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.user.firstName + '' + widget.user.lastName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text('Возраст: '),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Телефон: '),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Email: '),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(widget.user.age.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.user.phone),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.user.email),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
