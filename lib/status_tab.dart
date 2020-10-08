import 'package:flutter/material.dart';
import 'models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
            subtitle: Text(dummy[i].time),
          )
        ],
      ),
    );
  }
}
