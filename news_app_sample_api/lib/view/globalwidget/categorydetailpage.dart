import 'package:flutter/material.dart';

class CategoryDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String content;
  final String author;
  final String discription;

  final String categoryName;

  CategoryDetailPage(
      {required this.categoryName,
      required this.title,
      required this.imageUrl,
      required this.content,
      required this.author,
      required this.discription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('$categoryName News')),
      // body: Center(
      //   child: Text('Showing articles for $categoryName'),
      // ),
      appBar: AppBar(
        title: Text('$categoryName News',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),
      ),
      actions: [
        Icon(Icons.more_horiz)
      ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              Image.network(imageUrl, fit: BoxFit.cover),
              SizedBox(height: 16),
              // Article Title
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              //author
              Text(
                author,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Article Content
              Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
