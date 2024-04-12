import 'package:flutter/material.dart';

void main() {
  runApp(CommentLayout());
}

class CommentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Comentários'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Comment(
                profileImage: 'imagens/1.jpg',
                text: 'Ótima postagem!',
              ),
              SizedBox(height: 10.0),
              Comment(
                profileImage: 'imagens/2.png',
                text: 'Adorei, parabéns!',
              ),
              SizedBox(height: 10.0),
              Comment(
                profileImage: 'imagens/3.png',
                text: 'Muito informativo!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Comment extends StatelessWidget {
  final String profileImage;
  final String text;

  Comment({required this.profileImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(profileImage),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
