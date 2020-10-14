import 'package:flutter/material.dart';
import 'package:new_project/story_view.dart';
import 'models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  "My status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(mine.avatarUrl),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 3.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: ListTile(
              title: Text(
                dummy[0].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(dummy[0].time),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryPageView())),
              leading: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(dummy[0].avatarUrl),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 3.0,
                    child: Container(
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
