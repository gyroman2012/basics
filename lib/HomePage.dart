import 'package:flutter/material.dart';
import 'Auth.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignedOut});
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // var snapshot;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Elysia Rose', style: TextStyle(color: Colors.blue[900])),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout',
                style: TextStyle(fontSize: 17.0, color: Colors.white)),
            onPressed: _signOut,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.purple[300],
            height: 200,
            child: ListView.builder(
              itemCount: 1,
              // itemCount: snapshot.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.teal[300],
                  elevation: 10.0,
                  margin: EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "images/shipoopie.jpeg",
                            // Image.network(
                            //   snapshot[index].data["url"],
                            height: 130.0,
                            width: 130.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'shipoopie',
                          // snapshot[index].data["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.blue[900],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
