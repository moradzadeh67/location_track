import 'dart:io';

import 'package:location_track/models/point_location_model.dart';

class PointModel {
  final int id;
  final String title;
  final PointLocationModel location;
  final File image;

  PointModel({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}