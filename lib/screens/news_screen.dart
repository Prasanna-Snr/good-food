import 'package:flutter/cupertino.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("News Screen",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
