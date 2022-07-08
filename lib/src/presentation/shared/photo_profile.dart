import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  final String source;
  final double width;
  final double height;
  const PhotoProfile({Key? key, required this.source, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(60),
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          alignment: Alignment.center,
          image: NetworkImage(source),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
