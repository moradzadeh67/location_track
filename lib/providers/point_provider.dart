 import 'package:flutter/material.dart';
import 'package:location_track/models/point_model.dart';

class PointProvider extends ChangeNotifier {
 List<PointModel> _points = [];
 List<PointModel> get points => [..._points];
}