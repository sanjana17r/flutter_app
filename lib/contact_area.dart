import 'package:flutter/material.dart';
import 'models/contacts.dart';

class Contactarea extends StatefulWidget {
  @override
  _ContactareaState createState() => _ContactareaState();
}

class _ContactareaState extends State<Contactarea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Column(children: <Widget>[
                Text(
                  "Select contact",
                ),
                Text(
                  "179 contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ]),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ],
            )),
        body: ListView.builder(
            itemCount: dummy.length,
            itemBuilder: (context, i) => Column(
                  children: <Widget>[
                    Divider(height: 10.0),
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
                      subtitle: Text(dummy[i].status),
                    )
                  ],
                )));
  }
}
