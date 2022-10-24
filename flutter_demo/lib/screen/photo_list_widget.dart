import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

typedef ItemSelectedCallback = Null Function(String name, String url);

class PhotoListWidget extends StatefulWidget {
  final ItemSelectedCallback onItemSelected;
  final bool flag;

  const PhotoListWidget(this.onItemSelected, this.flag, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhotoListWidgetState createState() => _PhotoListWidgetState();
}

class _PhotoListWidgetState extends State<PhotoListWidget> {
  List<Photo> photos = [
    Photo(
        'https://images.pexels.com/photos/13440765/pexels-photo-13440765.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
        '相机',
        '299'),
    Photo(
        'https://images.pexels.com/photos/13616572/pexels-photo-13616572.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
        '所有照片',
        '10000'),
    Photo(
        'https://images.pexels.com/photos/13935769/pexels-photo-13935769.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
        '微信',
        '213'),
    Photo(
        'https://images.pexels.com/photos/14042718/pexels-photo-14042718.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
        '风景照',
        '12')
  ];

  @override
  Widget build(BuildContext context) {
    return widget.flag ? max() : small();
  }

  Widget max() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, position) {
        return InkWell(
          onTap: () {
            widget.onItemSelected(photos[position].name, photos[position].bg);
          },
          child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            height: 400,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(
                  photos[position].bg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  photos[position].name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  photos[position].num,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget small() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2.4,
            child: custom(photos[0]),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1.2,
            child: custom(photos[1]),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.2,
            child: custom(photos[2]),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.2,
            child: custom(photos[3]),
          ),
        ],
      ),
    );
  }

  Widget custom(Photo photo) {
    return InkWell(
      onTap: () {
        widget.onItemSelected(photo.name, photo.bg);
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: NetworkImage(
              photo.bg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: widget.flag
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    photo.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    photo.num,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class Photo {
  String name;
  String bg;
  String num;

  Photo(this.bg, this.name, this.num);
}
