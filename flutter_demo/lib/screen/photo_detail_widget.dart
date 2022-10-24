import 'package:flutter/material.dart';

class PhotoDetailWidget extends StatefulWidget {
  final String data;
  final String url;

  const PhotoDetailWidget(this.data, this.url, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhotoDetailWidgetState createState() => _PhotoDetailWidgetState();
}

class _PhotoDetailWidgetState extends State<PhotoDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: 20,
      itemBuilder: (context, position) {
        return Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage(
                widget.url,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
