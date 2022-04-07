import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_search/data/api.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/widget/photo_widget.dart';

import '../data/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final api = PixabayApi();

  final _controller = TextEditingController();

  List<Photo> _photos = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '이미지 검색',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () async {
                      final photos = await api.fetch(_controller.text);
                      setState(() {
                        _photos = photos;
                      });
                    },
                  )),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: _photos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final photo = _photos[index];
                  return PhotoWidget(
                    photo: photo,
                  );
                }),
          )
        ],
      ),
    );
  }
}
