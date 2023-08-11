import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.text, required this.email});

  final String text;
  final String email;

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    bool isBuddleFromCurrentUser = _auth.currentUser?.email == email;
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: isBuddleFromCurrentUser
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 5.0,
            borderRadius: isBuddleFromCurrentUser
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
            color: isBuddleFromCurrentUser
                ? Colors.lightBlueAccent
                : Colors.lightGreen,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Text(
                '$text',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              email,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
