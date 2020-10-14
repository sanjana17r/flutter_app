import 'package:flutter/material.dart';
import 'models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummy.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummy[i].avatarUrl),
            ),
            title: Text(
              dummy[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(dummy[i].message),
            trailing: Column(children: <Widget>[
              Text(dummy[i].time),
              //Icon(Icons.volume_mute),
            ]),
          )
        ],
      ),
    );
  }
}
