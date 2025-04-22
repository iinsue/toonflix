import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Shadow Style
        elevation: 2,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,

        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 15,
                      offset: Offset(10, 10),
                      color: Colors.black45,
                    ),
                  ],
                ),
                child: Image.network(
                  thumb,
                  headers: {'Referer': 'https://comic.naver.com'},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
