import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imgArray;

  const ImageSlider({required this.imgArray});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.imgArray
              .map((item) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter))))
              .toList(),
          options: CarouselOptions(
              height: 700,
              autoPlay: false,
              enlargeCenterPage: false,
              // aspectRatio: 2.0,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgArray.map((url) {
              int index = widget.imgArray.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(255, 255, 255, 0.9)
                      : Color.fromRGBO(255, 255, 255, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
