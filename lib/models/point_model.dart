import 'dart:io';
class PointModel {
  final int id;
  final String title;
  final location;
  final File image;

  PointModel({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}